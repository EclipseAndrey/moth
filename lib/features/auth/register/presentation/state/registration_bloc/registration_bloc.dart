import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:moth/core/auth/auth_repository/auth_repository.dart';
import 'package:moth/features/auth/register/presentation/state/registration_bloc/registration_models.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  final IAuthRepository authRepository;

  RegistrationBloc(
    this.authRepository,
  ) : super(const RegistrationState.initial()) {
    on<ConfirmEmailRegistration>(_confirmEmail);
    on<ConfirmCodeRegistration>(_confirmCode);
    on<SetPasswordRegistration>(_confirmRegistration);
    on<ResetRegistration>(_resetRegistration);
  }

  FutureOr<void> _confirmEmail(
    ConfirmEmailRegistration event,
    Emitter<RegistrationState> emit,
  ) async {
    emit(RegistrationState.awaitConfirmationCode(email: event.email));
  }

  FutureOr<void> _confirmCode(
    ConfirmCodeRegistration event,
    Emitter<RegistrationState> emit,
  ) async {
    if (event.code == '121121') {
      emit(RegistrationState.successCode(email: event.email));
    } else {
      emit(RegistrationState.errorCode('code_not_valid'.tr(), email: event.email));
      await Future.delayed(const Duration(milliseconds: 300));
      emit(RegistrationState.awaitConfirmationCode(email: event.email));
    }
  }

  FutureOr<void> _confirmRegistration(
    SetPasswordRegistration event,
    Emitter<RegistrationState> emit,
  ) async {
    emit(RegistrationState.loadingFinish(email: event.email));
    try {
      final result = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: event.email,
        password: event.password,
      );
      emit(RegistrationState.successRegistration(email: event.email));
      authRepository.login.auth();
    } catch (e) {
      //TODO crash
      emit(const RegistrationState.error('unknown_error'));
    }
  }

  FutureOr<void> _resetRegistration(
    ResetRegistration event,
    Emitter<RegistrationState> emit,
  ) async {
    emit(const RegistrationState.initial());
  }
}
