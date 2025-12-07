import 'package:flutter/material.dart';

extension ScrollControllerExtensions on ScrollController {
  Future<void> adaptiveAnimateTo(
    double offset, {
    Duration duration = const Duration(milliseconds: 500),
    Curve curve = Curves.easeInOut,
  }) {
    final int milliseconds = duration.inMilliseconds * ((offset - this.offset).abs() / 1000).round();
    return animateTo(
      offset,
      duration: Duration(milliseconds: milliseconds),
      curve: curve,
    );
  }
}
