import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class IAppTextTheme {
  TextStyle get displayLarge;

  TextStyle get displayMedium;

  TextStyle get displaySmall;

  TextStyle get headlineLarge;

  TextStyle get headlineMedium;

  TextStyle get headlineSmall;

  TextStyle get titleLarge;

  TextStyle get titleMedium;

  TextStyle get titleSmall;

  TextStyle get labelLarge;

  TextStyle get labelMedium;

  TextStyle get labelSmall;

  TextStyle get bodyLarge;

  TextStyle get bodyMedium;

  TextStyle get bodySmall;

  TextTheme get textTheme;
}

class BaseTextTheme implements IAppTextTheme {
  @override
  TextStyle get displayLarge => displayMedium;

  @override
  TextStyle get displayMedium => GoogleFonts.sourceSansPro(
        fontSize: 37,
        fontWeight: FontWeight.w400,
        height: 48 / 37,
      );

  @override
  TextStyle get displaySmall => displayMedium;

  @override
  TextStyle get headlineLarge => GoogleFonts.sourceSansPro(
        fontSize: 27,
        fontWeight: FontWeight.w700,
        height: 32 / 27,
      );

  @override
  TextStyle get headlineMedium => GoogleFonts.sourceSansPro(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 32 / 24,
      );

  @override
  TextStyle get headlineSmall => GoogleFonts.sourceSansPro(
        fontSize: 17,
        fontWeight: FontWeight.w700,
        height: 20 / 17,
      );

  @override
  TextStyle get titleLarge => GoogleFonts.sourceSansPro(
        fontSize: 15,
        fontWeight: FontWeight.w700,
        height: 24 / 15,
      );

  @override
  TextStyle get titleMedium => GoogleFonts.sourceSansPro(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        height: 24 / 15,
      );

  @override
  TextStyle get titleSmall => GoogleFonts.sourceSansPro(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        height: 16 / 13,
      );

  @override
  TextStyle get labelLarge => GoogleFonts.sourceSansPro(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        height: 24 / 15,
      );

  @override
  TextStyle get labelMedium => GoogleFonts.sourceSansPro(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        height: 16 / 13,
      );

  @override
  TextStyle get labelSmall => GoogleFonts.sourceSansPro(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        height: 16 / 11,
        letterSpacing: 2,
      );

  @override
  TextStyle get bodyLarge => GoogleFonts.sourceSansPro(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        height: 24 / 15,
      );

  @override
  TextStyle get bodyMedium => GoogleFonts.sourceSansPro(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        height: 16 / 13,
      );

  @override
  TextStyle get bodySmall => GoogleFonts.sourceSansPro(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        height: 14 / 11,
      );

  @override
  TextTheme get textTheme => TextTheme(
        displayLarge: displayLarge,
        displayMedium: displayMedium,
        displaySmall: displaySmall,
        headlineLarge: headlineLarge,
        headlineMedium: headlineMedium,
        headlineSmall: headlineSmall,
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
        labelLarge: labelLarge,
        labelMedium: labelMedium,
        labelSmall: labelSmall,
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        bodySmall: bodySmall,
      );
}
