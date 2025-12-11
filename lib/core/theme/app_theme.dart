import 'package:flutter/material.dart';

import 'theme_extensions.dart';

class AppTheme {
  static ThemeData get dark {
    return ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: darkColors.primary,
        onPrimary: darkColors.onBackground,
        secondary: darkColors.secondary,
        onSecondary: darkColors.onBackground,
        tertiary: darkColors.accent,
        onTertiary: darkColors.onBackground,
        surface: darkColors.background,
        onSurface: darkColors.onBackground,
        error: darkColors.error,
        onError: darkColors.onBackground,
      ),
      brightness: Brightness.dark,
      extensions: [darkColors, darkStyles],
      scaffoldBackgroundColor: darkColors.background,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: darkColors.onBackground,
      ),
      iconTheme: IconThemeData(color: darkColors.onBackground),
    );
  }

  static ThemeData get light {
    return ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: lightColors.primary,
        onPrimary: lightColors.onBackground,
        secondary: lightColors.secondary,
        onSecondary: lightColors.onBackground,
        tertiary: lightColors.accent,
        onTertiary: lightColors.onBackground,
        surface: lightColors.background,
        onSurface: lightColors.onBackground,
        error: lightColors.error,
        onError: lightColors.onBackground,
      ),
      brightness: Brightness.light,
      extensions: [lightColors, lightStyles],
      scaffoldBackgroundColor: lightColors.background,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: lightColors.onBackground,
      ),
      iconTheme: IconThemeData(color: lightColors.onBackground),
    );
  }
}
