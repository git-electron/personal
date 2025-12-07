import 'package:flutter/material.dart';
import 'package:landing/core/gen/colors.gen.dart';

class GradientShaderWrapper extends StatelessWidget {
  const GradientShaderWrapper({
    required this.child,
    required this.gradient,
    super.key,
  });

  GradientShaderWrapper.primary({
    required this.child,
    super.key,
  }) : gradient = LinearGradient(
          colors: [AppColors.primaryGradientStart, AppColors.primaryGradientEnd],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        );

  final Widget child;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (final Rect bounds) => gradient.createShader(
        Rect.fromLTWH(
          0,
          0,
          bounds.width,
          bounds.height,
        ),
      ),
      child: child,
    );
  }
}
