import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:landing/core/theme/theme_extensions.dart';
import 'package:landing/presentation/gradient_shader_wrapper.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Hey! I\'m', style: context.styles.header),
                GradientShaderWrapper.primary(
                  child: Text(' Egor ', style: context.styles.headerItalic),
                ),
                Text('✨', style: context.styles.header),
              ],
            ),
            Positioned(
              top: 55,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('A', style: context.styles.header),
                  GradientShaderWrapper.primary(
                    child: Text(' Flutter Developer ', style: context.styles.headerItalic),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
