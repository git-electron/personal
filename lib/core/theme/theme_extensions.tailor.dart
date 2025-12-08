// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_extensions.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$ColorsTailorMixin on ThemeExtension<Colors> {
  Color get transparent;
  Color get white;
  Color get black;
  Color get background;
  Color get onBackground;
  Color get text;
  Color get warning;
  Color get error;
  Color get buttonHighlight;
  Color get primary;
  Color get primaryGradientStart;
  Color get primaryGradientEnd;
  List<Color> get primaryGradientColors;
  Color get secondary;
  Color get secondaryGradientStart;
  Color get secondaryGradientEnd;
  List<Color> get secondaryGradientColors;
  Color get accent;
  Color get accentGradientStart;
  Color get accentGradientEnd;
  List<Color> get accentGradientColors;

  @override
  Colors copyWith({
    Color? transparent,
    Color? white,
    Color? black,
    Color? background,
    Color? onBackground,
    Color? text,
    Color? warning,
    Color? error,
    Color? buttonHighlight,
    Color? primary,
    Color? primaryGradientStart,
    Color? primaryGradientEnd,
    List<Color>? primaryGradientColors,
    Color? secondary,
    Color? secondaryGradientStart,
    Color? secondaryGradientEnd,
    List<Color>? secondaryGradientColors,
    Color? accent,
    Color? accentGradientStart,
    Color? accentGradientEnd,
    List<Color>? accentGradientColors,
  }) {
    return Colors(
      transparent: transparent ?? this.transparent,
      white: white ?? this.white,
      black: black ?? this.black,
      background: background ?? this.background,
      onBackground: onBackground ?? this.onBackground,
      text: text ?? this.text,
      warning: warning ?? this.warning,
      error: error ?? this.error,
      buttonHighlight: buttonHighlight ?? this.buttonHighlight,
      primary: primary ?? this.primary,
      primaryGradientStart: primaryGradientStart ?? this.primaryGradientStart,
      primaryGradientEnd: primaryGradientEnd ?? this.primaryGradientEnd,
      primaryGradientColors:
          primaryGradientColors ?? this.primaryGradientColors,
      secondary: secondary ?? this.secondary,
      secondaryGradientStart:
          secondaryGradientStart ?? this.secondaryGradientStart,
      secondaryGradientEnd: secondaryGradientEnd ?? this.secondaryGradientEnd,
      secondaryGradientColors:
          secondaryGradientColors ?? this.secondaryGradientColors,
      accent: accent ?? this.accent,
      accentGradientStart: accentGradientStart ?? this.accentGradientStart,
      accentGradientEnd: accentGradientEnd ?? this.accentGradientEnd,
      accentGradientColors: accentGradientColors ?? this.accentGradientColors,
    );
  }

  @override
  Colors lerp(covariant ThemeExtension<Colors>? other, double t) {
    if (other is! Colors) return this as Colors;
    return Colors(
      transparent: Color.lerp(transparent, other.transparent, t)!,
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      background: Color.lerp(background, other.background, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      text: Color.lerp(text, other.text, t)!,
      warning: Color.lerp(warning, other.warning, t)!,
      error: Color.lerp(error, other.error, t)!,
      buttonHighlight: Color.lerp(buttonHighlight, other.buttonHighlight, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      primaryGradientStart:
          Color.lerp(primaryGradientStart, other.primaryGradientStart, t)!,
      primaryGradientEnd:
          Color.lerp(primaryGradientEnd, other.primaryGradientEnd, t)!,
      primaryGradientColors:
          t < 0.5 ? primaryGradientColors : other.primaryGradientColors,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      secondaryGradientStart:
          Color.lerp(secondaryGradientStart, other.secondaryGradientStart, t)!,
      secondaryGradientEnd:
          Color.lerp(secondaryGradientEnd, other.secondaryGradientEnd, t)!,
      secondaryGradientColors:
          t < 0.5 ? secondaryGradientColors : other.secondaryGradientColors,
      accent: Color.lerp(accent, other.accent, t)!,
      accentGradientStart:
          Color.lerp(accentGradientStart, other.accentGradientStart, t)!,
      accentGradientEnd:
          Color.lerp(accentGradientEnd, other.accentGradientEnd, t)!,
      accentGradientColors:
          t < 0.5 ? accentGradientColors : other.accentGradientColors,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Colors &&
            const DeepCollectionEquality()
                .equals(transparent, other.transparent) &&
            const DeepCollectionEquality().equals(white, other.white) &&
            const DeepCollectionEquality().equals(black, other.black) &&
            const DeepCollectionEquality()
                .equals(background, other.background) &&
            const DeepCollectionEquality()
                .equals(onBackground, other.onBackground) &&
            const DeepCollectionEquality().equals(text, other.text) &&
            const DeepCollectionEquality().equals(warning, other.warning) &&
            const DeepCollectionEquality().equals(error, other.error) &&
            const DeepCollectionEquality()
                .equals(buttonHighlight, other.buttonHighlight) &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality()
                .equals(primaryGradientStart, other.primaryGradientStart) &&
            const DeepCollectionEquality()
                .equals(primaryGradientEnd, other.primaryGradientEnd) &&
            const DeepCollectionEquality()
                .equals(primaryGradientColors, other.primaryGradientColors) &&
            const DeepCollectionEquality().equals(secondary, other.secondary) &&
            const DeepCollectionEquality()
                .equals(secondaryGradientStart, other.secondaryGradientStart) &&
            const DeepCollectionEquality()
                .equals(secondaryGradientEnd, other.secondaryGradientEnd) &&
            const DeepCollectionEquality().equals(
                secondaryGradientColors, other.secondaryGradientColors) &&
            const DeepCollectionEquality().equals(accent, other.accent) &&
            const DeepCollectionEquality()
                .equals(accentGradientStart, other.accentGradientStart) &&
            const DeepCollectionEquality()
                .equals(accentGradientEnd, other.accentGradientEnd) &&
            const DeepCollectionEquality()
                .equals(accentGradientColors, other.accentGradientColors));
  }

  @override
  int get hashCode {
    return Object.hashAll([
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(transparent),
      const DeepCollectionEquality().hash(white),
      const DeepCollectionEquality().hash(black),
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(onBackground),
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(warning),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(buttonHighlight),
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(primaryGradientStart),
      const DeepCollectionEquality().hash(primaryGradientEnd),
      const DeepCollectionEquality().hash(primaryGradientColors),
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(secondaryGradientStart),
      const DeepCollectionEquality().hash(secondaryGradientEnd),
      const DeepCollectionEquality().hash(secondaryGradientColors),
      const DeepCollectionEquality().hash(accent),
      const DeepCollectionEquality().hash(accentGradientStart),
      const DeepCollectionEquality().hash(accentGradientEnd),
      const DeepCollectionEquality().hash(accentGradientColors),
    ]);
  }
}

extension ColorsBuildContext on BuildContext {
  Colors get colors => Theme.of(this).extension<Colors>()!;
}

mixin _$StylesTailorMixin on ThemeExtension<Styles> {
  TextStyle get headerDesktop;
  TextStyle get titleDesktop;
  TextStyle get bodyDesktop;
  TextStyle get headerTablet;
  TextStyle get titleTablet;
  TextStyle get bodyTablet;
  TextStyle get headerMobile;
  TextStyle get titleMobile;
  TextStyle get bodyMobile;

  @override
  Styles copyWith({
    TextStyle? headerDesktop,
    TextStyle? titleDesktop,
    TextStyle? bodyDesktop,
    TextStyle? headerTablet,
    TextStyle? titleTablet,
    TextStyle? bodyTablet,
    TextStyle? headerMobile,
    TextStyle? titleMobile,
    TextStyle? bodyMobile,
  }) {
    return Styles(
      headerDesktop: headerDesktop ?? this.headerDesktop,
      titleDesktop: titleDesktop ?? this.titleDesktop,
      bodyDesktop: bodyDesktop ?? this.bodyDesktop,
      headerTablet: headerTablet ?? this.headerTablet,
      titleTablet: titleTablet ?? this.titleTablet,
      bodyTablet: bodyTablet ?? this.bodyTablet,
      headerMobile: headerMobile ?? this.headerMobile,
      titleMobile: titleMobile ?? this.titleMobile,
      bodyMobile: bodyMobile ?? this.bodyMobile,
    );
  }

  @override
  Styles lerp(covariant ThemeExtension<Styles>? other, double t) {
    if (other is! Styles) return this as Styles;
    return Styles(
      headerDesktop: TextStyle.lerp(headerDesktop, other.headerDesktop, t)!,
      titleDesktop: TextStyle.lerp(titleDesktop, other.titleDesktop, t)!,
      bodyDesktop: TextStyle.lerp(bodyDesktop, other.bodyDesktop, t)!,
      headerTablet: TextStyle.lerp(headerTablet, other.headerTablet, t)!,
      titleTablet: TextStyle.lerp(titleTablet, other.titleTablet, t)!,
      bodyTablet: TextStyle.lerp(bodyTablet, other.bodyTablet, t)!,
      headerMobile: TextStyle.lerp(headerMobile, other.headerMobile, t)!,
      titleMobile: TextStyle.lerp(titleMobile, other.titleMobile, t)!,
      bodyMobile: TextStyle.lerp(bodyMobile, other.bodyMobile, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Styles &&
            const DeepCollectionEquality()
                .equals(headerDesktop, other.headerDesktop) &&
            const DeepCollectionEquality()
                .equals(titleDesktop, other.titleDesktop) &&
            const DeepCollectionEquality()
                .equals(bodyDesktop, other.bodyDesktop) &&
            const DeepCollectionEquality()
                .equals(headerTablet, other.headerTablet) &&
            const DeepCollectionEquality()
                .equals(titleTablet, other.titleTablet) &&
            const DeepCollectionEquality()
                .equals(bodyTablet, other.bodyTablet) &&
            const DeepCollectionEquality()
                .equals(headerMobile, other.headerMobile) &&
            const DeepCollectionEquality()
                .equals(titleMobile, other.titleMobile) &&
            const DeepCollectionEquality()
                .equals(bodyMobile, other.bodyMobile));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(headerDesktop),
      const DeepCollectionEquality().hash(titleDesktop),
      const DeepCollectionEquality().hash(bodyDesktop),
      const DeepCollectionEquality().hash(headerTablet),
      const DeepCollectionEquality().hash(titleTablet),
      const DeepCollectionEquality().hash(bodyTablet),
      const DeepCollectionEquality().hash(headerMobile),
      const DeepCollectionEquality().hash(titleMobile),
      const DeepCollectionEquality().hash(bodyMobile),
    );
  }
}
