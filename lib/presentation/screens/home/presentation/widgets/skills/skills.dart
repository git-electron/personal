part of '../../home_screen.dart';

class _Skills extends StatelessWidget {
  const _Skills();

  @override
  Widget build(BuildContext context) {
    final List<Skill> skills = _getSkills(context);

    return WebPaddingWrapper(
      child: Padding(
        padding: const Pad(vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            Text(
              context.t.home.skills.title,
              style: context.titleStyle,
            ),
            Text(
              context.t.home.skills.description,
              style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.5)),
            ),
            const Gap(10),
            AlignedGridView.count(
              shrinkWrap: true,
              itemCount: skills.length,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: context.layoutDependantValue(desktop: 3, orElse: 2),
              mainAxisSpacing: context.layoutDependantValue(desktop: 20, orElse: 10),
              crossAxisSpacing: context.layoutDependantValue(desktop: 20, orElse: 10),
              itemBuilder: (context, index) => _SkillCard(skills[index]),
            ),
            const Gap(10),
            Container(
              padding: Pad(all: context.layoutDependantValue(desktop: 30, orElse: 20)),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: context.colors.onBackground.copyWithOpacity(.05),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: context.colors.onBackground.copyWithOpacity(.1),
                ),
              ),
              child: Column(
                spacing: 15,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    context.t.home.skills.tech_stack.title,
                    style: context.bodyStyle.copyWith(fontWeight: FontWeight.w700),
                  ),
                  const Gap(0),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: context.layoutDependantValue(desktop: 15, orElse: 10),
                    runSpacing: context.layoutDependantValue(desktop: 15, orElse: 10),
                    children: _techStackItems.map(_TechStackCard.new).toList(),
                  ),
                  const Gap(0),
                  Text(
                    'and more...',
                    style: context.bodyStyle.copyWith(
                      color: context.colors.text.copyWithOpacity(.5),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Skill> _getSkills(BuildContext context) => [
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

  static const List<String> _techStackItems = [
    'Flutter',
    'Dart',
    'Kotlin',
    'Stateless & Stateful Widget',
    'Inherited Widget',
    'Future',
    'Streams',
    'RxDart',
    'Animation',
    'Slivers',
    'BLoC',
    'MobX',
    'Riverpod',
    'Provider',
    'HTTP',
    'GraphQL',
    'WebSockets',
    'Firebase',
    'Dio',
    'Build Runner',
    'GetIt',
    'Injectable',
    'Retrofit',
    'Auto Route',
    'Go Router',
    'Uni Links',
    'Freezed',
    'Json Serializable',
    'Theme Tailor',
    'Flutter Gen',
    'Built Value',
    'Shared Preferences',
    'Flutter Secure Storage',
    'Intl',
    'Slang',
    'Easy Localization',
    'Testing',
    'Git',
    'Testflight',
    'Google Play',
    'TeamCity',
    'GitHub Actions',
    'GitLab Pipelines',
    'Vercel',
    'Docker',
  ];
}
