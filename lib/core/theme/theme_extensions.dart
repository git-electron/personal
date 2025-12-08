import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

import '../gen/colors.gen.dart';
import '../gen/fonts.gen.dart';

part 'theme_colors.dart';
part 'theme_extensions.tailor.dart';
part 'theme_styles.dart';

@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class Colors extends ThemeExtension<Colors> with _$ColorsTailorMixin {
  const Colors({
    required this.transparent,
    required this.white,
    required this.black,
    required this.background,
    required this.onBackground,
    required this.text,
    required this.warning,
    required this.error,
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
  final Color text;

  @override
  final Color warning;

  @override
  final Color error;

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

const Colors colors = Colors(
  transparent: _Colors.transparent,
  white: _Colors.white,
  black: _Colors.black,
  background: _Colors.background,
  onBackground: _Colors.onBackground,
  text: _Colors.text,
  warning: _Colors.warning,
  error: _Colors.error,
  primary: _Colors.primary,
  primaryGradientEnd: _Colors.primaryGradientEnd,
  primaryGradientStart: _Colors.primaryGradientStart,
  primaryGradientColors: _Colors.primaryGradientColors,
  secondary: _Colors.secondary,
  secondaryGradientEnd: _Colors.secondaryGradientEnd,
  secondaryGradientStart: _Colors.secondaryGradientStart,
  secondaryGradientColors: _Colors.secondaryGradientColors,
  accent: _Colors.accent,
  accentGradientEnd: _Colors.accentGradientEnd,
  accentGradientStart: _Colors.accentGradientStart,
  accentGradientColors: _Colors.accentGradientColors,
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

final Styles styles = Styles(
  headerDesktop: _Styles.headerDesktop,
  titleDesktop: _Styles.titleDesktop,
  bodyDesktop: _Styles.bodyDesktop,
  headerTablet: _Styles.headerTablet,
  titleTablet: _Styles.titleTablet,
  bodyTablet: _Styles.bodyTablet,
  headerMobile: _Styles.headerMobile,
  titleMobile: _Styles.titleMobile,
  bodyMobile: _Styles.bodyMobile,
);
