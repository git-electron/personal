import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/gen/assets.gen.dart';

part 'project_model.freezed.dart';

@freezed
sealed class Project with _$Project {
  factory Project({
    required String title,
    required String description,
    required String category,
    required AssetGenImage cover,
    required List<String> skills,
    String? gitHubUrl,
    String? appStoreUrl,
    String? playMarketUrl,
  }) = _Project;

  Project._();

  static List<Project> values(BuildContext context) => [
        Project(
          title: 'title',
          description: 'description',
          category: 'category',
          cover: Assets.images.backgrounds.headerBackground,
          skills: ['skill', 'skill', 'skill'],
        ),
        Project(
          title: 'title',
          description: 'description',
          category: 'category',
          cover: Assets.images.backgrounds.headerBackground,
          skills: ['skill', 'skill', 'skill'],
        ),
        Project(
          title: 'title',
          description: 'description',
          category: 'category',
          cover: Assets.images.backgrounds.headerBackground,
          skills: ['skill', 'skill', 'skill'],
        ),
      ];
}
