// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element

part of 'm_theme.dart';

// **************************************************************************
// ThemeTailorGenerator
// **************************************************************************

class MTheme extends ThemeExtension<MTheme> {
  const MTheme({
    required this.colors,
    required this.options,
    required this.text,
  });

  final MColors colors;
  final MOptions options;
  final MTextTheme text;

  static final MTheme light = MTheme(
    colors: _$MTheme.colors[0],
    options: _$MTheme.options[0],
    text: _$MTheme.text[0],
  );

  static final MTheme dark = MTheme(
    colors: _$MTheme.colors[1],
    options: _$MTheme.options[1],
    text: _$MTheme.text[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  MTheme copyWith({
    MColors? colors,
    MOptions? options,
    MTextTheme? text,
  }) {
    return MTheme(
      colors: colors ?? this.colors,
      options: options ?? this.options,
      text: text ?? this.text,
    );
  }

  @override
  MTheme lerp(ThemeExtension<MTheme>? other, double t) {
    if (other is! MTheme) return this;
    return MTheme(
      colors: colors.lerp(other.colors, t),
      options: options.lerp(other.options, t),
      text: text.lerp(other.text, t),
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MTheme &&
            const DeepCollectionEquality().equals(colors, other.colors) &&
            const DeepCollectionEquality().equals(options, other.options) &&
            const DeepCollectionEquality().equals(text, other.text));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(colors),
        const DeepCollectionEquality().hash(options),
        const DeepCollectionEquality().hash(text));
  }
}

extension MThemeThemeDataProps on ThemeData {
  MTheme get _mTheme => extension<MTheme>()!;
  MColors get colors => _mTheme.colors;
  MOptions get options => _mTheme.options;
  MTextTheme get text => _mTheme.text;
}

class MColors extends ThemeExtension<MColors> {
  const MColors({
    required this.base,
    required this.baseWave,
    required this.comment,
    required this.controlAccent,
    required this.counter,
    required this.counterHigh,
    required this.counterLow,
    required this.counterLower,
    required this.counterLowest,
    required this.counterMedium,
    required this.danger,
    required this.inactiveSwitchColor,
    required this.link,
    required this.primary,
    required this.secondary,
    required this.success,
    required this.warning,
  });

  final Color base;
  final Color baseWave;
  final Color comment;
  final Color controlAccent;
  final Color counter;
  final Color counterHigh;
  final Color counterLow;
  final Color counterLower;
  final Color counterLowest;
  final Color counterMedium;
  final Color danger;
  final Color inactiveSwitchColor;
  final Color link;
  final Color primary;
  final Color secondary;
  final Color success;
  final Color warning;

  static final MColors light = MColors(
    base: _$MColors.base[0],
    baseWave: _$MColors.baseWave[0],
    comment: _$MColors.comment[0],
    controlAccent: _$MColors.controlAccent[0],
    counter: _$MColors.counter[0],
    counterHigh: _$MColors.counterHigh[0],
    counterLow: _$MColors.counterLow[0],
    counterLower: _$MColors.counterLower[0],
    counterLowest: _$MColors.counterLowest[0],
    counterMedium: _$MColors.counterMedium[0],
    danger: _$MColors.danger[0],
    inactiveSwitchColor: _$MColors.inactiveSwitchColor[0],
    link: _$MColors.link[0],
    primary: _$MColors.primary[0],
    secondary: _$MColors.secondary[0],
    success: _$MColors.success[0],
    warning: _$MColors.warning[0],
  );

  static final MColors dark = MColors(
    base: _$MColors.base[1],
    baseWave: _$MColors.baseWave[1],
    comment: _$MColors.comment[1],
    controlAccent: _$MColors.controlAccent[1],
    counter: _$MColors.counter[1],
    counterHigh: _$MColors.counterHigh[1],
    counterLow: _$MColors.counterLow[1],
    counterLower: _$MColors.counterLower[1],
    counterLowest: _$MColors.counterLowest[1],
    counterMedium: _$MColors.counterMedium[1],
    danger: _$MColors.danger[1],
    inactiveSwitchColor: _$MColors.inactiveSwitchColor[1],
    link: _$MColors.link[1],
    primary: _$MColors.primary[1],
    secondary: _$MColors.secondary[1],
    success: _$MColors.success[1],
    warning: _$MColors.warning[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  MColors copyWith({
    Color? base,
    Color? baseWave,
    Color? comment,
    Color? controlAccent,
    Color? counter,
    Color? counterHigh,
    Color? counterLow,
    Color? counterLower,
    Color? counterLowest,
    Color? counterMedium,
    Color? danger,
    Color? inactiveSwitchColor,
    Color? link,
    Color? primary,
    Color? secondary,
    Color? success,
    Color? warning,
  }) {
    return MColors(
      base: base ?? this.base,
      baseWave: baseWave ?? this.baseWave,
      comment: comment ?? this.comment,
      controlAccent: controlAccent ?? this.controlAccent,
      counter: counter ?? this.counter,
      counterHigh: counterHigh ?? this.counterHigh,
      counterLow: counterLow ?? this.counterLow,
      counterLower: counterLower ?? this.counterLower,
      counterLowest: counterLowest ?? this.counterLowest,
      counterMedium: counterMedium ?? this.counterMedium,
      danger: danger ?? this.danger,
      inactiveSwitchColor: inactiveSwitchColor ?? this.inactiveSwitchColor,
      link: link ?? this.link,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      success: success ?? this.success,
      warning: warning ?? this.warning,
    );
  }

  @override
  MColors lerp(ThemeExtension<MColors>? other, double t) {
    if (other is! MColors) return this;
    return MColors(
      base: Color.lerp(base, other.base, t)!,
      baseWave: Color.lerp(baseWave, other.baseWave, t)!,
      comment: Color.lerp(comment, other.comment, t)!,
      controlAccent: Color.lerp(controlAccent, other.controlAccent, t)!,
      counter: Color.lerp(counter, other.counter, t)!,
      counterHigh: Color.lerp(counterHigh, other.counterHigh, t)!,
      counterLow: Color.lerp(counterLow, other.counterLow, t)!,
      counterLower: Color.lerp(counterLower, other.counterLower, t)!,
      counterLowest: Color.lerp(counterLowest, other.counterLowest, t)!,
      counterMedium: Color.lerp(counterMedium, other.counterMedium, t)!,
      danger: Color.lerp(danger, other.danger, t)!,
      inactiveSwitchColor:
          Color.lerp(inactiveSwitchColor, other.inactiveSwitchColor, t)!,
      link: Color.lerp(link, other.link, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      success: Color.lerp(success, other.success, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MColors &&
            const DeepCollectionEquality().equals(base, other.base) &&
            const DeepCollectionEquality().equals(baseWave, other.baseWave) &&
            const DeepCollectionEquality().equals(comment, other.comment) &&
            const DeepCollectionEquality()
                .equals(controlAccent, other.controlAccent) &&
            const DeepCollectionEquality().equals(counter, other.counter) &&
            const DeepCollectionEquality()
                .equals(counterHigh, other.counterHigh) &&
            const DeepCollectionEquality()
                .equals(counterLow, other.counterLow) &&
            const DeepCollectionEquality()
                .equals(counterLower, other.counterLower) &&
            const DeepCollectionEquality()
                .equals(counterLowest, other.counterLowest) &&
            const DeepCollectionEquality()
                .equals(counterMedium, other.counterMedium) &&
            const DeepCollectionEquality().equals(danger, other.danger) &&
            const DeepCollectionEquality()
                .equals(inactiveSwitchColor, other.inactiveSwitchColor) &&
            const DeepCollectionEquality().equals(link, other.link) &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality().equals(secondary, other.secondary) &&
            const DeepCollectionEquality().equals(success, other.success) &&
            const DeepCollectionEquality().equals(warning, other.warning));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(base),
        const DeepCollectionEquality().hash(baseWave),
        const DeepCollectionEquality().hash(comment),
        const DeepCollectionEquality().hash(controlAccent),
        const DeepCollectionEquality().hash(counter),
        const DeepCollectionEquality().hash(counterHigh),
        const DeepCollectionEquality().hash(counterLow),
        const DeepCollectionEquality().hash(counterLower),
        const DeepCollectionEquality().hash(counterLowest),
        const DeepCollectionEquality().hash(counterMedium),
        const DeepCollectionEquality().hash(danger),
        const DeepCollectionEquality().hash(inactiveSwitchColor),
        const DeepCollectionEquality().hash(link),
        const DeepCollectionEquality().hash(primary),
        const DeepCollectionEquality().hash(secondary),
        const DeepCollectionEquality().hash(success),
        const DeepCollectionEquality().hash(warning));
  }
}

class MOptions extends ThemeExtension<MOptions> {
  const MOptions({
    required this.buttonMargin,
    required this.contentPadding,
    required this.formInputMargin,
    required this.iosBottomSafeAreaHeight,
    required this.listTileIconSize,
  });

  final EdgeInsets buttonMargin;
  final EdgeInsets contentPadding;
  final EdgeInsets formInputMargin;
  final double iosBottomSafeAreaHeight;
  final double listTileIconSize;

  static final MOptions light = MOptions(
    buttonMargin: _$MOptions.buttonMargin[0],
    contentPadding: _$MOptions.contentPadding[0],
    formInputMargin: _$MOptions.formInputMargin[0],
    iosBottomSafeAreaHeight: _$MOptions.iosBottomSafeAreaHeight[0],
    listTileIconSize: _$MOptions.listTileIconSize[0],
  );

  static final MOptions dark = MOptions(
    buttonMargin: _$MOptions.buttonMargin[1],
    contentPadding: _$MOptions.contentPadding[1],
    formInputMargin: _$MOptions.formInputMargin[1],
    iosBottomSafeAreaHeight: _$MOptions.iosBottomSafeAreaHeight[1],
    listTileIconSize: _$MOptions.listTileIconSize[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  MOptions copyWith({
    EdgeInsets? buttonMargin,
    EdgeInsets? contentPadding,
    EdgeInsets? formInputMargin,
    double? iosBottomSafeAreaHeight,
    double? listTileIconSize,
  }) {
    return MOptions(
      buttonMargin: buttonMargin ?? this.buttonMargin,
      contentPadding: contentPadding ?? this.contentPadding,
      formInputMargin: formInputMargin ?? this.formInputMargin,
      iosBottomSafeAreaHeight:
          iosBottomSafeAreaHeight ?? this.iosBottomSafeAreaHeight,
      listTileIconSize: listTileIconSize ?? this.listTileIconSize,
    );
  }

  @override
  MOptions lerp(ThemeExtension<MOptions>? other, double t) {
    if (other is! MOptions) return this;
    return MOptions(
      buttonMargin: t < 0.5 ? buttonMargin : other.buttonMargin,
      contentPadding: t < 0.5 ? contentPadding : other.contentPadding,
      formInputMargin: t < 0.5 ? formInputMargin : other.formInputMargin,
      iosBottomSafeAreaHeight:
          t < 0.5 ? iosBottomSafeAreaHeight : other.iosBottomSafeAreaHeight,
      listTileIconSize: t < 0.5 ? listTileIconSize : other.listTileIconSize,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MOptions &&
            const DeepCollectionEquality()
                .equals(buttonMargin, other.buttonMargin) &&
            const DeepCollectionEquality()
                .equals(contentPadding, other.contentPadding) &&
            const DeepCollectionEquality()
                .equals(formInputMargin, other.formInputMargin) &&
            const DeepCollectionEquality().equals(
                iosBottomSafeAreaHeight, other.iosBottomSafeAreaHeight) &&
            const DeepCollectionEquality()
                .equals(listTileIconSize, other.listTileIconSize));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(buttonMargin),
        const DeepCollectionEquality().hash(contentPadding),
        const DeepCollectionEquality().hash(formInputMargin),
        const DeepCollectionEquality().hash(iosBottomSafeAreaHeight),
        const DeepCollectionEquality().hash(listTileIconSize));
  }
}

class MTextTheme extends ThemeExtension<MTextTheme> {
  const MTextTheme({
    required this.numberB,
    required this.textInputHint,
  });

  final TextStyle numberB;
  final TextStyle textInputHint;

  static final MTextTheme light = MTextTheme(
    numberB: _$MTextTheme.numberB[0],
    textInputHint: _$MTextTheme.textInputHint[0],
  );

  static final MTextTheme dark = MTextTheme(
    numberB: _$MTextTheme.numberB[1],
    textInputHint: _$MTextTheme.textInputHint[1],
  );

  static final themes = [
    light,
    dark,
  ];

  @override
  MTextTheme copyWith({
    TextStyle? numberB,
    TextStyle? textInputHint,
  }) {
    return MTextTheme(
      numberB: numberB ?? this.numberB,
      textInputHint: textInputHint ?? this.textInputHint,
    );
  }

  @override
  MTextTheme lerp(ThemeExtension<MTextTheme>? other, double t) {
    if (other is! MTextTheme) return this;
    return MTextTheme(
      numberB: TextStyle.lerp(numberB, other.numberB, t)!,
      textInputHint: TextStyle.lerp(textInputHint, other.textInputHint, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MTextTheme &&
            const DeepCollectionEquality().equals(numberB, other.numberB) &&
            const DeepCollectionEquality()
                .equals(textInputHint, other.textInputHint));
  }

  @override
  int get hashCode {
    return Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(numberB),
        const DeepCollectionEquality().hash(textInputHint));
  }
}
