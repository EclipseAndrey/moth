import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

abstract class ILoginProvider {
  bool get isLoggedIn;
  Stream<bool> get authStream;
  void unAuth();
  void auth();
  void dispose();
  Future<void> init();
}

class LoginProvider implements ILoginProvider {
  final BehaviorSubject<bool> _authController = BehaviorSubject();

  @override
  Stream<bool> get authStream => _authController.stream;

  @override
  bool get isLoggedIn => _authController.value;

  @override
  void unAuth() {
    FirebaseAuth.instance.signOut().ignore();
    _authController.add(false);
  }

  @override
  void auth() {
    _authController.add(true);
  }

  @override
  void dispose() {
    _authController.close();
  }

  @override
  Future<void> init() async {
    final fAuth = FirebaseAuth.instance;
    if (fAuth.currentUser != null) {
      auth();
    } else {
      unAuth();
    }
  }
}
