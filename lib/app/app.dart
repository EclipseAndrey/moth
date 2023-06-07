import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:moth/app/localization/localization.dart';
import 'package:moth/app/router/router.dart';
import 'package:moth/app/theme/app_theme_data.dart';

class App extends StatelessWidget {
  final appRouter = AppRouter();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: Localization.supportedLocale,
      path: 'assets/translations',
      startLocale: const Locale('ru', 'RU'),
      fallbackLocale: const Locale('ru', 'RU'),
      useFallbackTranslations: true,
      useOnlyLangCode: true,
      child: Builder(builder: (context) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          locale: context.locale,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          theme: getLightTheme(context),
          darkTheme: getDarkTheme(context),
          routerConfig: appRouter.config(),
        );
      }),
    );
  }
}
