// ignore_for_file: depend_on_referenced_packages
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moth/app/theme/app_colors.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'm_theme.tailor.dart';

@Tailor(themeGetter: ThemeGetter.onThemeDataProps)
class _$MTheme {
  @themeExtension
  static List<MColors> colors = MColors.themes;

  @themeExtension
  static List<MTextTheme> text = MTextTheme.themes;

  @themeExtension
  static List<MOptions> options = MOptions.themes;
}

List<T> singleValue<T>(T style) => <T>[style, style];

@tailorComponent
class _$MColors {
  static List<Color> primary = singleValue(AppColors.kPrimary);
  static List<Color> secondary = singleValue(AppColors.kSecondary);
  static List<Color> base = const [AppColors.kLightBase, AppColors.kDarkBase];
  static List<Color> baseWave = const [
    AppColors.kLightBaseWave,
    AppColors.kDarkBaseWave,
  ];
  static List<Color> success = singleValue(AppColors.kSuccess);
  static List<Color> warning = singleValue(AppColors.kWarning);
  static List<Color> danger = singleValue(AppColors.kDanger);
  static List<Color> link = singleValue(AppColors.kLink);
  static List<Color> comment = singleValue(AppColors.kComment);
  static List<Color> counter = const [
    AppColors.kLightCounter,
    AppColors.kDarkCounter,
  ];
  static List<Color> counterHigh = const [
    AppColors.kLightHigh,
    AppColors.kDarkHigh,
  ];
  static List<Color> counterMedium = const [
    AppColors.kLightMedium,
    AppColors.kDarkMedium,
  ];
  static List<Color> counterLow = const [
    AppColors.kLightLow,
    AppColors.kDarkLow,
  ];
  static List<Color> counterLower = const [
    AppColors.kLightLower,
    AppColors.kDarkLower,
  ];
  static List<Color> counterLowest = const [
    AppColors.kLightLowest,
    AppColors.kDarkLowest,
  ];
  static List<Color> inactiveSwitchColor = singleValue(const Color(0xFFC8C9CC));
  static List<Color> controlAccent = singleValue(const Color(0xffFFC115));
}

@tailorComponent
class _$MOptions {
  static List<EdgeInsets> contentPadding = singleValue(const EdgeInsets.symmetric(horizontal: 16));
  static List<double> iosBottomSafeAreaHeight = singleValue(34);
  static List<double> listTileIconSize = singleValue(26);
  static List<EdgeInsets> buttonMargin = singleValue(const EdgeInsets.only(bottom: 16));
  static List<EdgeInsets> formInputMargin = singleValue(const EdgeInsets.only(bottom: 8));
}

@tailorComponent
class _$MTextTheme {
  static List<TextStyle> numberB = [
    GoogleFonts.sassyFrass(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      height: 20 / 14,
      color: AppColors.kLightBase,
    ),
    GoogleFonts.sassyFrass(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      height: 20 / 14,
      color: AppColors.kDarkBase,
    ),
  ];

  static List<TextStyle> textInputHint = singleValue(GoogleFonts.sassyFrass(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    height: 16 / 11,
    color: AppColors.kSecondary,
  ));
}
