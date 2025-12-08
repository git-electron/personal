import 'package:flutter/material.dart';
import '../../../core/extensions/context_extensions.dart';
import '../../../core/gen/assets.gen.dart';
import '../wrappers/tappable.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    required this.icon,
    required this.onTap,
    super.key,
  }) : image = null;

  const AppIconButton.image({
    required this.image,
    required this.onTap,
    super.key,
  }) : icon = null;

  final SvgGenImage? icon;
  final AssetGenImage? image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Tappable(
      onTap: onTap,
      child: SizedBox.square(
        dimension: context.layoutDependantValue(desktop: 25, tablet: 22, mobile: 20),
        child: icon != null ? icon!.svg() : image!.image(),
      ),
    );
  }
}
