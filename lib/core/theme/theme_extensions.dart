import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import '../gen/colors.gen.dart';
import '../gen/fonts.gen.dart';

part 'theme_colors.dart';
part 'theme_extensions.tailor.dart';
part 'theme_styles.dart';

@TailorMixin(themeGetter: ThemeGetter.none)
class Colors extends ThemeExtension<Colors> with _$ColorsTailorMixin {
  const Colors({
    required this.transparent,
    required this.white,
    required this.black,
    required this.background,
    required this.onBackground,
    required this.cardBackground,
    required this.accentCardBackground,
    required this.cardBorder,
    required this.text,
    required this.warning,
    required this.error,
    required this.buttonHighlight,
    required this.primary,
    required this.primaryGradientEnd,
    required this.primaryGradientStart,
    required this.primaryGradientColors,
    required this.secondary,
    required this.secondaryGradientEnd,
    required this.secondaryGradientStart,
    required this.secondaryGradientColors,
    required this.accent,
    required this.accentGradientEnd,
    required this.accentGradientStart,
    required this.accentGradientColors,
  });

  @override
  final Color transparent;

  @override
  final Color white;

  @override
  final Color black;

  @override
  final Color background;

  @override
  final Color onBackground;

  @override
  final Color cardBackground;

  @override
  final Color accentCardBackground;

  @override
  final Color cardBorder;

  @override
  final Color text;

  @override
  final Color warning;

  @override
  final Color error;

  @override
  final Color buttonHighlight;

  @override
  final Color primary;

  @override
  final Color primaryGradientStart;

  @override
  final Color primaryGradientEnd;

  @override
  final List<Color> primaryGradientColors;

  @override
  final Color secondary;

  @override
  final Color secondaryGradientStart;

  @override
  final Color secondaryGradientEnd;

  @override
  final List<Color> secondaryGradientColors;

  @override
  final Color accent;

  @override
  final Color accentGradientStart;

  @override
  final Color accentGradientEnd;

  @override
  final List<Color> accentGradientColors;
}

const Colors darkColors = Colors(
  transparent: _DarkColors.transparent,
  white: _DarkColors.white,
  black: _DarkColors.black,
  background: _DarkColors.background,
  onBackground: _DarkColors.onBackground,
  cardBackground: _DarkColors.cardBackground,
  accentCardBackground: _DarkColors.accentCardBackground,
  cardBorder: _DarkColors.cardBorder,
  text: _DarkColors.text,
  warning: _DarkColors.warning,
  error: _DarkColors.error,
  buttonHighlight: _DarkColors.buttonHighlight,
  primary: _DarkColors.primary,
  primaryGradientEnd: _DarkColors.primaryGradientEnd,
  primaryGradientStart: _DarkColors.primaryGradientStart,
  primaryGradientColors: _DarkColors.primaryGradientColors,
  secondary: _DarkColors.secondary,
  secondaryGradientEnd: _DarkColors.secondaryGradientEnd,
  secondaryGradientStart: _DarkColors.secondaryGradientStart,
  secondaryGradientColors: _DarkColors.secondaryGradientColors,
  accent: _DarkColors.accent,
  accentGradientEnd: _DarkColors.accentGradientEnd,
  accentGradientStart: _DarkColors.accentGradientStart,
  accentGradientColors: _DarkColors.accentGradientColors,
);

const Colors lightColors = Colors(
  transparent: _LightColors.transparent,
  white: _LightColors.white,
  black: _LightColors.black,
  background: _LightColors.background,
  onBackground: _LightColors.onBackground,
  cardBackground: _LightColors.cardBackground,
  accentCardBackground: _LightColors.accentCardBackground,
  cardBorder: _LightColors.cardBorder,
  text: _LightColors.text,
  warning: _LightColors.warning,
  error: _LightColors.error,
  buttonHighlight: _LightColors.buttonHighlight,
  primary: _LightColors.primary,
  primaryGradientEnd: _LightColors.primaryGradientEnd,
  primaryGradientStart: _LightColors.primaryGradientStart,
  primaryGradientColors: _LightColors.primaryGradientColors,
  secondary: _LightColors.secondary,
  secondaryGradientEnd: _LightColors.secondaryGradientEnd,
  secondaryGradientStart: _LightColors.secondaryGradientStart,
  secondaryGradientColors: _LightColors.secondaryGradientColors,
  accent: _LightColors.accent,
  accentGradientEnd: _LightColors.accentGradientEnd,
  accentGradientStart: _LightColors.accentGradientStart,
  accentGradientColors: _LightColors.accentGradientColors,
);

@TailorMixin(themeGetter: ThemeGetter.none)
class Styles extends ThemeExtension<Styles> with _$StylesTailorMixin {
  Styles({
    required this.headerDesktop,
    required this.titleDesktop,
    required this.bodyDesktop,
    required this.headerTablet,
    required this.titleTablet,
    required this.bodyTablet,
    required this.headerMobile,
    required this.titleMobile,
    required this.bodyMobile,
  });

  @override
  final TextStyle headerDesktop;

  @override
  final TextStyle titleDesktop;

  @override
  final TextStyle bodyDesktop;

  @override
  final TextStyle headerTablet;

  @override
  final TextStyle titleTablet;

  @override
  final TextStyle bodyTablet;

  @override
  final TextStyle headerMobile;

  @override
  final TextStyle titleMobile;

  @override
  final TextStyle bodyMobile;
}

final Styles darkStyles = Styles(
  headerDesktop: _DarkStyles.headerDesktop,
  titleDesktop: _DarkStyles.titleDesktop,
  bodyDesktop: _DarkStyles.bodyDesktop,
  headerTablet: _DarkStyles.headerTablet,
  titleTablet: _DarkStyles.titleTablet,
  bodyTablet: _DarkStyles.bodyTablet,
  headerMobile: _DarkStyles.headerMobile,
  titleMobile: _DarkStyles.titleMobile,
  bodyMobile: _DarkStyles.bodyMobile,
);

final Styles lightStyles = Styles(
  headerDesktop: _LightStyles.headerDesktop,
  titleDesktop: _LightStyles.titleDesktop,
  bodyDesktop: _LightStyles.bodyDesktop,
  headerTablet: _LightStyles.headerTablet,
  titleTablet: _LightStyles.titleTablet,
  bodyTablet: _LightStyles.bodyTablet,
  headerMobile: _LightStyles.headerMobile,
  titleMobile: _LightStyles.titleMobile,
  bodyMobile: _LightStyles.bodyMobile,
);
