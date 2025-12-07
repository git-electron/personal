import 'package:flutter/material.dart' show Color;

extension ColorExtensions on Color {
  Color copyWithOpacity(double opacity) {
    assert(opacity >= 0 && opacity <= 1);
    final int alpha = (opacity.clamp(0.0, 1.0) * 255).round();
    return withAlpha(alpha);
  }
}
