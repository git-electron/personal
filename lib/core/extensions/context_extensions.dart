import 'package:flutter/material.dart';
import 'package:landing/core/domain/models/layout_type.dart';

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
}
