import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/gen/assets.gen.dart';
import '../../../../../core/i18n/app_localization.g.dart';

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
    String? websiteUrl,
    String? appStoreUrl,
    String? googlePlayUrl,
  }) = _Project;

  Project._();

  bool get hasGithubUrl => gitHubUrl != null;
  bool get hasWebsiteUrl => websiteUrl != null;
  bool get hasAppStoreUrl => appStoreUrl != null;
  bool get hasGooglePlayUrl => googlePlayUrl != null;

  static List<Project> values(BuildContext context) => [
        Project(
          title: context.t.home.projects.irealt.title,
          description: context.t.home.projects.irealt.description,
          category: context.t.home.projects.irealt.category,
          cover: Assets.images.backgrounds.headerBackground,
          skills: ['Flutter', 'GraphQL', 'BLoC', 'Maps'],
          websiteUrl: 'https://irealt.online',
          appStoreUrl: 'https://apps.apple.com/ru/app/irealt/id6451043247',
          googlePlayUrl: 'https://play.google.com/store/apps/details?id=com.irealt.mobile',
        ),
        Project(
          title: context.t.home.projects.doto.title,
          description: context.t.home.projects.doto.description,
          category: context.t.home.projects.doto.category,
          cover: Assets.images.backgrounds.headerBackground,
          skills: ['Flutter', 'Cubit', 'REST API', 'Charts', 'KYC', 'Billing', 'Bloomreach'],
          websiteUrl: 'https://doto.com',
          appStoreUrl: 'https://apps.apple.com/za/app/doto-mobile-trading/id6447878833',
          googlePlayUrl: 'https://play.google.com/store/apps/details?id=com.doto.mobile',
        ),
        Project(
          title: context.t.home.projects.octa.title,
          description: context.t.home.projects.octa.description,
          category: context.t.home.projects.octa.category,
          cover: Assets.images.backgrounds.headerBackground,
          skills: ['Flutter', 'BLoC', 'Firebase', 'Pushwoosh'],
          websiteUrl: 'https://octatradinglessons.com',
          googlePlayUrl: 'https://play.google.com/store/apps/details?id=com.octa.trading.lessons',
        ),
        Project(
          title: context.t.home.projects.seline.title,
          description: context.t.home.projects.seline.description,
          category: context.t.home.projects.seline.category,
          cover: Assets.images.backgrounds.headerBackground,
          skills: ['Flutter', 'MobX', 'REST API', 'Files', 'Local Auth'],
          websiteUrl: 'https://seline.ae',
          appStoreUrl: 'https://apps.apple.com/ru/app/seline-clinic-dubai/id6740837376',
          googlePlayUrl: 'https://play.google.com/store/apps/details?id=com.seline.dubai',
        ),
        Project(
          title: context.t.home.projects.emcd.title,
          description: context.t.home.projects.emcd.description,
          category: context.t.home.projects.emcd.category,
          cover: Assets.images.backgrounds.headerBackground,
          skills: ['Flutter', 'BLoC', 'REST API', 'RASP', 'Encryption'],
          websiteUrl: 'https://emcd.io',
          appStoreUrl:
              'https://apps.apple.com/ru/app/emcd-wallet-p2p-%25D0%25BC%25D0%25B0%25D0%25B9%25D0%25BD%25D0%25B8%25D0%25BD%25D0%25B3/id1606903304',
          googlePlayUrl: 'https://play.google.com/store/apps/details?id=io.emcd.emcd_flutter.prod',
        ),
        Project(
          title: context.t.home.projects.fakelab.title,
          description: context.t.home.projects.fakelab.description,
          category: context.t.home.projects.fakelab.category,
          cover: Assets.images.backgrounds.headerBackground,
          skills: ['Flutter', 'Dart', 'Web', 'BLoC', 'Firebase'],
          gitHubUrl: 'https://github.com/git-electron/fakelab_records_webapp',
          websiteUrl: 'https://t.me/fakelab_records_bot',
        ),
      ];
}
