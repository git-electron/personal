import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../core/extensions/context_extensions.dart';
import '../../../core/gen/assets.gen.dart';
import '../wrappers/tappable.dart';

class AppTextButton extends StatefulWidget {
  const AppTextButton({
    required this.onTap,
    required this.text,
    this.icon,
    this.image,
    this.style,
    super.key,
  });

  final VoidCallback onTap;
  final String text;
  final SvgGenImage? icon;
  final AssetGenImage? image;
  final TextStyle? style;

  @override
  State<AppTextButton> createState() => _AppTextButtonState();
}

class _AppTextButtonState extends State<AppTextButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Tappable(
      onTap: widget.onTap,
      child: MouseRegion(
        opaque: false,
        onEnter: (_) => setState(() => _isHovering = true),
        onExit: (_) => setState(() => _isHovering = false),
        child: AnimatedOpacity(
          duration: 100.ms,
          opacity: _isHovering ? 1 : .5,
          child: Row(
            spacing: context.layoutDependantValue(desktop: 10, orElse: 8),
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.icon != null)
                SizedBox.square(
                  dimension: context.layoutDependantValue(desktop: 20, orElse: 16),
                  child: widget.icon!.svg(),
                ),
              if (widget.image != null && widget.icon == null)
                SizedBox.square(
                  dimension: context.layoutDependantValue(desktop: 20, orElse: 16),
                  child: widget.image!.image(),
                ),
              Text(
                widget.text,
                style: widget.style ?? context.bodyStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
