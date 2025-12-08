import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

import '../../../core/extensions/context_extensions.dart';
import '../../../core/gen/assets.gen.dart';
import '../../../core/theme/theme_extensions.dart';
import '../wrappers/tappable.dart';

class AppButton extends StatefulWidget {
  const AppButton({
    required this.onTap,
    required this.text,
    this.icon,
    this.isDense = false,
    super.key,
  });

  const AppButton.compact({
    required this.onTap,
    required this.text,
    this.icon,
    super.key,
  }) : isDense = true;

  final VoidCallback onTap;
  final String text;
  final SvgGenImage? icon;

  final bool isDense;

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
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          decoration: BoxDecoration(
            color: _isHovering ? context.colors.buttonHighlight : context.colors.background,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              strokeAlign: BorderSide.strokeAlignOutside,
              color: context.colors.buttonHighlight,
              width: 1,
            ),
          ),
          padding: Pad(
            vertical: 8,
            horizontal: 20,
          ),
          child: Row(
            spacing: context.layoutDependantValue(desktop: 10, orElse: 8),
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.icon != null)
                SizedBox.square(
                  dimension: context.layoutDependantValue(desktop: 20, orElse: 16),
                  child: widget.icon!.svg(),
                ),
              Text(
                widget.text,
                style: context.bodyStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
