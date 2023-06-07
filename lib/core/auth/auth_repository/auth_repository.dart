import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:moth/core/auth/login_provider/login_provider.dart';
import 'package:rxdart/rxdart.dart';

enum MAuthState { authorized, unauthorized, awaiting }

abstract class IAuthRepository {
  ILoginProvider get login;

  BehaviorSubject<MAuthState> get authStream;

  void dispose();

  Future<void> init();

  void unAuth();
}

@Singleton(as: IAuthRepository, dispose: disposeProvider)
class AuthRepository implements IAuthRepository {
  final BehaviorSubject<MAuthState> _authStream = BehaviorSubject.seeded(MAuthState.awaiting);
  final ILoginProvider _loginProvider = LoginProvider();
  late final StreamSubscription _authSubscription;

  @override
  ILoginProvider get login => _loginProvider;

  @override
  BehaviorSubject<MAuthState> get authStream => _authStream;

  AuthRepository();

  @override
  void dispose() {
    _authSubscription.cancel();
    _loginProvider.dispose();
    _authStream.close();
  }

  @override
  Future<void> init() async {
    print('IAuthRepository init');
    await _loginProvider.init();

    _authSubscription = MergeStream([
      _loginProvider.authStream,
    ]).listen((state) {
      print(state);
      _authStream.add(state ? MAuthState.authorized : MAuthState.unauthorized);
    });
  }

  @override
  void unAuth() {
    _loginProvider.unAuth();
  }
}

FutureOr disposeProvider(IAuthRepository instance) {
  instance.dispose();
}
