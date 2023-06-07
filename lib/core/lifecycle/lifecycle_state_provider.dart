import 'dart:async';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

abstract class ILifecycleStateProvider extends WidgetsBindingObserver {
  BehaviorSubject<AppLifecycleState> get stateSubject;
  void dispose();
}

@Singleton(as: ILifecycleStateProvider, dispose: disposeController)
class LifecycleStateProvider extends ILifecycleStateProvider {
  final BehaviorSubject<AppLifecycleState> _stateSubject =
      BehaviorSubject<AppLifecycleState>.seeded(AppLifecycleState.resumed);

  @override
  BehaviorSubject<AppLifecycleState> get stateSubject => _stateSubject;

  @override
  void dispose() {
    _stateSubject.close();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _stateSubject.add(state);
  }
}

FutureOr disposeController(ILifecycleStateProvider instance) {
  instance.dispose();
}
