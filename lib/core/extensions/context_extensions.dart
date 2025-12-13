import 'package:flutter/material.dart' hide Colors;

import '../di/injector.dart';
import '../domain/bloc/theme_bloc/theme_bloc.dart';
import '../domain/models/layout_type.dart';
import '../theme/theme_extensions.dart';

extension BuildContextExtensions on BuildContext {
  MediaQueryData get mediaQueryOf => MediaQuery.of(this);

  Size get sizeOf => mediaQueryOf.size;
  EdgeInsets get paddingOf => mediaQueryOf.padding;
  EdgeInsets get viewInsetsOf => mediaQueryOf.viewInsets;

  LayoutType get layoutType {
    if (sizeOf.width > 1200) return LayoutType.desktop;
    if (sizeOf.width > 700) return LayoutType.tablet;
    return LayoutType.mobile;
  }

  bool get isDesktopLayout => layoutType == LayoutType.desktop;
  bool get isTabletLayout => layoutType == LayoutType.tablet;
  bool get isMobileLayout => layoutType == LayoutType.mobile;

  T dependsOnLayout<T>({T? desktop, T? tablet, T? mobile, T? orElse}) {
    assert((desktop != null && tablet != null && mobile != null) || orElse != null);

    return switch (layoutType) {
      LayoutType.desktop => desktop ?? orElse!,
      LayoutType.tablet => tablet ?? orElse!,
      LayoutType.mobile => mobile ?? orElse!,
    };
  }
}

extension BuildContextColorExtensions on BuildContext {
  T dependsOnTheme<T>({required T dark, required T light}) => isDarkTheme ? dark : light;

  Colors get colors => Theme.of(this).extension<Colors>()!;

  ThemeMode get themeMode => $<ThemeBloc>().state.themeMode;
  bool get isDarkTheme => themeMode == ThemeMode.dark;
  bool get isLightTheme => themeMode == ThemeMode.light;

  void switchThemeMode() => $<ThemeBloc>().add(const ThemeEvent.switchThemeMode());
}

extension BuildContextStyleExtensions on BuildContext {
  Styles get styles => isDarkTheme ? darkStyles : lightStyles;

  TextStyle get headerStyle => switch (layoutType) {
        LayoutType.desktop => styles.headerDesktop,
        LayoutType.tablet => styles.headerTablet,
        LayoutType.mobile => styles.headerMobile,
      };

  TextStyle get titleStyle => switch (layoutType) {
        LayoutType.desktop => styles.titleDesktop,
        LayoutType.tablet => styles.titleTablet,
        LayoutType.mobile => styles.titleMobile,
      };

  TextStyle get bodyStyle => switch (layoutType) {
        LayoutType.desktop => styles.bodyDesktop,
        LayoutType.tablet => styles.bodyTablet,
        LayoutType.mobile => styles.bodyMobile,
      };
}
