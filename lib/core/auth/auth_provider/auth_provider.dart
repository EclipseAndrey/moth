import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:moth/core/auth/auth_repository/auth_repository.dart';
import 'package:rxdart/rxdart.dart';

class AuthNotifier extends ChangeNotifier {
  final IAuthRepository authRepository;

  AuthNotifier() : authRepository = GetIt.I.get()..init() {
    authRepository.authStream.debounceTime(const Duration(milliseconds: 100)).listen((_) {
      notifyListeners();
    });
  }
}

class AuthProvider extends InheritedNotifier<AuthNotifier> {
  AuthProvider({
    required Widget child,
    super.key,
  }) : super(child: child, notifier: AuthNotifier());

  static IAuthRepository of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AuthProvider>()!.notifier!.authRepository;
  }
}
