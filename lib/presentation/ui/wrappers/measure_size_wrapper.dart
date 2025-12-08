
import 'package:flutter/material.dart';

import '../../../core/di/injector.dart';
import '../../../core/utils/debouncer/debouncer.dart';

class MeasureSizeWrapper extends StatefulWidget {
  const MeasureSizeWrapper({
    required this.builder,
    this.shouldMeasureOnce = true,
    super.key,
  });

  final bool shouldMeasureOnce;
  final Widget Function(BuildContext context, Size size) builder;

  @override
  State<MeasureSizeWrapper> createState() => _MeasureSizeWrapperState();
}

class _MeasureSizeWrapperState extends State<MeasureSizeWrapper> {
  bool _isSizeMeasured = false;
  Size _size = Size.zero;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(_callback);
    return NotificationListener(
      onNotification: (notification) {
        $<Debouncer>().run(_measureSize);
        return true;
      },
      child: widget.builder(context, _size),
    );
  }

  void _callback(Duration _) => _measureSize();

  void _measureSize() {
    Size? size = context.size;
    if (_isSizeMeasured && widget.shouldMeasureOnce) return;
    if (size == null) return;
    if (size == Size.zero) return;

    setState(() {
      _isSizeMeasured = true;
      _size = size;
    });
  }
}
