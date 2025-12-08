import 'dart:async';

import 'package:flutter/material.dart';

class Tappable extends StatefulWidget {
  const Tappable({
    required this.child,
    super.key,
    this.onTap,
    this.begin = 1.0,
    this.end = 0.95,
    this.beginDuration = const Duration(milliseconds: 20),
    this.endDuration = const Duration(milliseconds: 120),
    this.longTapRepeatDuration = const Duration(milliseconds: 100),
    this.beginCurve = Curves.decelerate,
    this.endCurve = Curves.fastOutSlowIn,
    this.onLongTap,
    this.enableLongTapRepeatEvent = false,
    this.shouldIgnoreIfOnTapIsNull = true,
  });

  final Widget child;

  final double begin;
  final double end;

  final Duration beginDuration;
  final Duration endDuration;
  final Duration longTapRepeatDuration;

  final Function()? onTap;
  final Function()? onLongTap;

  final bool enableLongTapRepeatEvent;

  final Curve beginCurve;
  final Curve endCurve;

  final bool shouldIgnoreIfOnTapIsNull;
  @override
  State<StatefulWidget> createState() => _TappableState();
}

class _TappableState extends State<Tappable> with SingleTickerProviderStateMixin<Tappable> {
  AnimationController? _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.endDuration,
      value: 1.0,
      reverseDuration: widget.beginDuration,
    );
    _animation = Tween(begin: widget.end, end: widget.begin).animate(
      CurvedAnimation(
        parent: _controller!,
        curve: widget.beginCurve,
        reverseCurve: widget.endCurve,
      ),
    );
    _controller?.forward();
  }

  bool _isOnTap = false;

  bool get _isIgnore => widget.shouldIgnoreIfOnTapIsNull && widget.onTap == null;

  @override
  Widget build(BuildContext context) {
    Future<void> onLongPress() async {
      await _controller?.forward();
      await widget.onLongTap?.call();
    }

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onTap,
        onLongPress: widget.onLongTap != null && !widget.enableLongTapRepeatEvent ? onLongPress : null,
        child: Listener(
          onPointerDown: (c) async {
            if (_isIgnore) return;

            _isOnTap = true;
            setState(() {});
            _controller?.reverse();
            if (widget.enableLongTapRepeatEvent) {
              await Future.delayed(widget.longTapRepeatDuration);
              while (_isOnTap) {
                await Future.delayed(widget.longTapRepeatDuration, () async {
                  await (widget.onLongTap ?? widget.onTap)?.call();
                });
              }
            }
          },
          onPointerUp: (c) async {
            if (_isIgnore) return;

            _isOnTap = false;
            setState(() {});
            await _controller?.forward();
          },
          child: ColoredBox(
            color: Colors.transparent,
            child: ScaleTransition(
              scale: _animation,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 60),
                opacity: _isOnTap ? .7 : 1,
                child: widget.child,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller?.stop();
    _controller?.dispose();
    _controller = null;
    super.dispose();
  }
}
