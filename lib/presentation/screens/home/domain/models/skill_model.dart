import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/gen/assets.gen.dart';
import '../../../../../core/i18n/app_localization.g.dart';

part 'skill_model.freezed.dart';

@freezed
sealed class Skill with _$Skill {
  factory Skill({
    required String title,
    required String description,
    required SvgGenImage icon,
  }) = _Skill;

  Skill._();

  static List<Skill> values(BuildContext context) => [
        Skill(
          title: context.t.home.skills.flutter_and_dart.title,
          description: context.t.home.skills.flutter_and_dart.description,
          icon: Assets.icons.skills.code.light,
        ),
        Skill(
          title: context.t.home.skills.cross_platform.title,
          description: context.t.home.skills.cross_platform.description,
          icon: Assets.icons.skills.mobile.light,
        ),
        Skill(
          title: context.t.home.skills.performance.title,
          description: context.t.home.skills.performance.description,
          icon: Assets.icons.skills.lightning.light,
        ),
        Skill(
          title: context.t.home.skills.ui_ux_design.title,
          description: context.t.home.skills.ui_ux_design.description,
          icon: Assets.icons.skills.palette.light,
        ),
        Skill(
          title: context.t.home.skills.state_management.title,
          description: context.t.home.skills.state_management.description,
          icon: Assets.icons.skills.database.light,
        ),
        Skill(
          title: context.t.home.skills.ci_cd.title,
          description: context.t.home.skills.ci_cd.description,
          icon: Assets.icons.skills.pipeline.light,
        ),
      ];
}
