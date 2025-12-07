import 'package:flutter/material.dart';

import 'theme_extensions.dart';

class AppTheme {
  static ThemeData get dark {
    return ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: colors.primary,
        onPrimary: colors.onBackground,
        secondary: colors.secondary,
        onSecondary: colors.onBackground,
        tertiary: colors.accent,
        onTertiary: colors.onBackground,
        surface: colors.background,
        onSurface: colors.onBackground,
        error: colors.error,
        onError: colors.onBackground,
      ),
      brightness: Brightness.dark,
      extensions: [colors, styles],
      scaffoldBackgroundColor: colors.background,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: colors.onBackground,
      ),
      iconTheme: IconThemeData(color: colors.onBackground),
    );
  }
}
