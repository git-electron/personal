import 'package:flutter/material.dart';
import 'package:landing/core/di/injector.dart';
import 'package:landing/core/domain/services/device_info_service.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

class WebScrollWrapper extends StatelessWidget {
  const WebScrollWrapper({
    required this.child,
    required this.controller,
    super.key,
  });

  final Widget child;
  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    final bool isMobileDevice = $<DeviceInfoService>().isMobileDevice;

    if (isMobileDevice) return child;

    return WebSmoothScroll(
      scrollSpeed: 1,
      scrollAnimationLength: 300,
      controller: controller,
      child: child,
    );
  }
}
