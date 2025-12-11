import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../core/extensions/context_extensions.dart';
import '../../../core/gen/assets.gen.dart';
import '../wrappers/tappable.dart';

class AppButton extends StatefulWidget {
  const AppButton({
    required this.onTap,
    required this.text,
    this.icon,
    this.image,
    super.key,
  });

  final VoidCallback onTap;
  final String text;
  final SvgGenImage? icon;
  final AssetGenImage? image;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Tappable(
      onTap: widget.onTap,
      child: MouseRegion(
        opaque: false,
        onEnter: (_) => setState(() => _isHovering = true),
        onExit: (_) => setState(() => _isHovering = false),
        child: RepaintBoundary(
          child: AnimatedContainer(
            duration: 100.ms,
            decoration: BoxDecoration(
              color: _isHovering ? context.colors.buttonHighlight : context.colors.background,
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                strokeAlign: BorderSide.strokeAlignOutside,
                color: context.colors.buttonHighlight,
              ),
            ),
            padding: const Pad(
              vertical: 8,
              horizontal: 20,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: context.layoutDependantValue(desktop: 10, orElse: 8),
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
                  style: context.bodyStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
