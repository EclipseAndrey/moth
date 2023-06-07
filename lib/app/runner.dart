import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:moth/app/app.dart';
import 'package:moth/app/env/app_environment.dart';
import 'package:moth/app/runner.config.dart';
import 'package:moth/core/auth/auth_provider/auth_provider.dart';
import 'package:moth/core/lifecycle/lifecycle_state_provider.dart';
import 'package:moth/firebase_options.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
  ignoreUnregisteredTypes: [AppEnvironment],
)
class AppRunner {
  static Future<void> run(AppEnvironment environment) async {
    await configureApp(environment);
    runZonedGuarded(
      () => runApp(AuthProvider(child: App())),
      (err, stack) {
        GetIt.I.get<Logger>().e('Unknown error', err, stack);
      },
    );
  }

  static Future<void> configureApp(AppEnvironment appEnvironment) async {
    WidgetsFlutterBinding.ensureInitialized();
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    GetIt.I.registerSingleton<AppEnvironment>(appEnvironment);
    final getIt = $initGetIt(GetIt.instance);
    WidgetsBinding.instance.addObserver(getIt.get<ILifecycleStateProvider>());
    await Firebase.initializeApp(
      name: 'moth',
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }
}
