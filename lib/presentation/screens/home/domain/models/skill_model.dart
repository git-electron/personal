import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/gen/assets.gen.dart';

part 'skill_model.freezed.dart';

@freezed
sealed class Skill with _$Skill {
  factory Skill({
    required String title,
    required String description,
    required SvgGenImage icon,
  }) = _Skill;
}
