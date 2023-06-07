import 'package:flutter/material.dart';
import 'package:moth/app/theme/app_text_theme.dart';
import 'package:moth/app/theme/m_theme.dart';

ThemeData getLightTheme(BuildContext context) {
  return _geThemeData(context, Brightness.light);
}

ThemeData getDarkTheme(BuildContext context) {
  return _geThemeData(context, Brightness.dark);
}

ThemeData _geThemeData(BuildContext context, Brightness brightness) {
  final appTextTheme = BaseTextTheme();
  final theme = brightness == Brightness.dark ? MTheme.dark : MTheme.light;
  final colors = theme.colors;

  return ThemeData(
    brightness: brightness,
    primaryColor: colors.primary,
    useMaterial3: true,
    extensions: [theme],
    splashColor: colors.primary,
    scaffoldBackgroundColor: colors.counter,
    textTheme: appTextTheme.textTheme.copyWith(
      bodyLarge: appTextTheme.bodyLarge.copyWith(color: colors.comment),
      labelSmall: appTextTheme.labelSmall.copyWith(color: colors.comment),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.resolveWith((states) {
        return colors.base;
      }),
      trackColor: MaterialStateProperty.resolveWith((states) {
        if (states.contains(MaterialState.selected)) {
          return colors.primary;
        }

        return const Color(0xFF98979B);
      }),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: colors.counter.withOpacity(0.9),
      centerTitle: true,
      titleTextStyle: appTextTheme.headlineSmall,
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStatePropertyAll(colors.base),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 16, vertical: 7),
        ),
        alignment: Alignment.centerLeft,
      ),
    ),
    listTileTheme: ListTileThemeData(
      iconColor: colors.base,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith((states) {
          if (states.contains(MaterialState.disabled)) {
            return colors.primary.withOpacity(0.4);
          }

          return colors.primary;
        }),
        minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 52)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        textStyle: MaterialStatePropertyAll(appTextTheme.headlineSmall),
        foregroundColor: MaterialStatePropertyAll(colors.counterMedium),
      ),
    ),
    highlightColor: colors.base.withOpacity(0.05),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
        minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 52)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        textStyle: MaterialStatePropertyAll(appTextTheme.headlineSmall),
        side: MaterialStatePropertyAll(BorderSide(color: colors.primary)),
        foregroundColor: MaterialStatePropertyAll(colors.base),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: colors.base.withOpacity(0.05),
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      errorStyle: appTextTheme.labelMedium.copyWith(color: colors.danger),
      labelStyle: appTextTheme.bodyLarge.copyWith(color: colors.secondary),
      floatingLabelStyle: appTextTheme.titleSmall.copyWith(color: colors.secondary),
      isDense: true,
      // border: MInputBorder.colored(Colors.transparent),
      // enabledBorder: MInputBorder.colored(Colors.transparent),
      // focusedBorder: MInputBorder.colored(colors.primary),
      // errorBorder: MInputBorder.colored(colors.danger),
      // focusedErrorBorder: MInputBorder.colored(colors.danger),
    ),
    cardTheme: CardTheme(
      color: colors.base.withOpacity(0.05),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      shadowColor: Colors.transparent,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      margin: EdgeInsets.zero,
    ),
  );
}
