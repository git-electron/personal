import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../core/extensions/context_extensions.dart';
import '../../../core/gen/assets.gen.dart';
import '../wrappers/tappable.dart';

class AppIconButton extends StatefulWidget {
  const AppIconButton({
    required this.icon,
    required this.onTap,
    this.size = 25,
    this.shouldAddBorder = false,
    super.key,
  }) : image = null;

  const AppIconButton.image({
    required this.image,
    required this.onTap,
    this.size = 25,
    this.shouldAddBorder = false,
    super.key,
  }) : icon = null;

  final SvgGenImage? icon;
  final AssetGenImage? image;
  final VoidCallback onTap;

  final double size;
  final bool shouldAddBorder;

  @override
  State<AppIconButton> createState() => _AppIconButtonState();
}

class _AppIconButtonState extends State<AppIconButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    if (widget.shouldAddBorder) {
      return Tappable(
        onTap: widget.onTap,
        child: MouseRegion(
          opaque: false,
          onEnter: (_) => setState(() => _isHovering = true),
          onExit: (_) => setState(() => _isHovering = false),
          child: RepaintBoundary(
            child: AnimatedContainer(
              duration: 100.ms,
              height: widget.size,
              width: widget.size,
              decoration: BoxDecoration(
                color: _isHovering ? context.colors.buttonHighlight : context.colors.background,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  strokeAlign: BorderSide.strokeAlignOutside,
                  color: context.colors.buttonHighlight,
                ),
              ),
              padding: const Pad(all: 5),
              alignment: Alignment.center,
              child: widget.icon != null ? widget.icon!.svg() : widget.image!.image(),
            ),
          ),
        ),
      );
    }

    return Tappable(
      onTap: widget.onTap,
      child: SizedBox.square(
        dimension: widget.size,
        child: widget.icon != null ? widget.icon!.svg() : widget.image!.image(),
      ),
    );
  }
}
