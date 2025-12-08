import 'package:flutter/material.dart';

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

  T layoutDependantValue<T>({T? desktop, T? tablet, T? mobile, T? orElse}) {
    assert((desktop != null && tablet != null && mobile != null) || orElse != null);

    return switch (layoutType) {
      LayoutType.desktop => desktop ?? orElse!,
      LayoutType.tablet => tablet ?? orElse!,
      LayoutType.mobile => mobile ?? orElse!,
    };
  }
}

extension BuildContextStyleExtensions on BuildContext {
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
