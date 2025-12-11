import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/extensions/context_extensions.dart';

@RoutePage()
class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: context.colors.background,
      body: const SizedBox(),
    );
  }
}
