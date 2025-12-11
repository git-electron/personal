import 'package:flutter/material.dart';

import '../../../core/gen/assets.gen.dart';

class Logo extends StatelessWidget {
  const Logo({this.size = 50, super.key});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Assets.icons.general.logo.svg(
      height: size,
      width: size,
    );
  }
}
