import 'package:flutter/material.dart';

import '../../../core/gen/assets.gen.dart';
import '../wrappers/tappable.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    required this.icon,
    required this.onTap,
    this.size = 25,
    super.key,
  }) : image = null;

  const AppIconButton.image({
    required this.image,
    required this.onTap,
    this.size = 25,
    super.key,
  }) : icon = null;

  final SvgGenImage? icon;
  final AssetGenImage? image;
  final VoidCallback onTap;

  final double size;

  @override
  Widget build(BuildContext context) {
    return Tappable(
      onTap: onTap,
      child: SizedBox.square(
        dimension: size,
        child: icon != null ? icon!.svg() : image!.image(),
      ),
    );
  }
}
