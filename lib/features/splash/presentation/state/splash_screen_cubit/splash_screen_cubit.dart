import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:moth/core/auth/auth_repository/auth_repository.dart';
import 'package:moth/features/splash/presentation/state/splash_screen_cubit/splash_screen_models.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  final IAuthRepository authRepository;
  SplashCubit(this.authRepository) : super(const SplashState.initial()) {
    _init();
  }

  Future<void> _init() async {
    print('Init Splash cubit');
    final Completer completer = Completer();
    Future.delayed(const Duration(seconds: 3), () {
      completer.complete();
    });
    final MAuthState user;
    print('value splash ${authRepository.authStream.valueOrNull}');
    if ((authRepository.authStream.valueOrNull ?? MAuthState.awaiting) == MAuthState.awaiting) {
      user = await authRepository.authStream.where((event) => event != MAuthState.awaiting).first;
    } else {
      user = authRepository.authStream.valueOrNull ?? MAuthState.awaiting;
    }
    print(user);
    await completer.future;
    if (user == MAuthState.authorized) {
      emit(const SplashState.authorized());
    } else {
      emit(const SplashState.unauthorized());
    }
  }
}
