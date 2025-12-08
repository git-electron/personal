import 'package:flutter/material.dart';
import 'package:web_smooth_scroll/web_smooth_scroll.dart';

import '../di/injector.dart';
import '../domain/services/device_info_service.dart';

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
      scrollSpeed: 5,
      scrollAnimationLength: 300,
      controller: controller,
      child: child,
    );
  }
}
