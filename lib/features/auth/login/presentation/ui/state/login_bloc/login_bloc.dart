import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:moth/core/auth/auth_repository/auth_repository.dart';
import 'package:moth/features/auth/login/presentation/ui/state/login_bloc/login_models.dart';
import 'package:moth/shared/exeptions/auth/m_auth_exceptions.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthRepository authRepository;

  LoginBloc(
    this.authRepository,
  ) : super(const LoginState.initial()) {
    on<EmailAndPasswordLogin>(_loginWithEmailAndPassword);
    on<CleanLogin>(_cleanState);
  }

  FutureOr<void> _loginWithEmailAndPassword(
    EmailAndPasswordLogin event,
    Emitter<LoginState> emit,
  ) async {
    emit(LoginState.loading(email: event.email));
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: event.email, password: event.password);
      emit(LoginState.successLogin(email: event.email));
      authRepository.login.auth();
    } on FirebaseAuthException catch (_) {
      emit(LoginState.error(MAuthException.errorCredentials().toString().tr()));
    } catch (e) {
      emit(LoginState.error(MAuthException.unknown().toString().tr()));
      //TODO Crashlytics
    }
  }

  FutureOr<void> _cleanState(
    CleanLogin event,
    Emitter<LoginState> emit,
  ) async {
    emit(const LoginState.initial());
  }
}
