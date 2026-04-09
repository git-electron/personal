part of '../../home_screen.dart';

class _Skills extends StatelessWidget {
  const _Skills();

  @override
  Widget build(BuildContext context) {
    final List<Skill> skills = Skill.values(context);

    return WebPaddingWrapper(
      child: Padding(
        padding: const Pad(vertical: 100),
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
              padding: Pad.zero,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: context.dependsOnLayout(desktop: 3, orElse: 2),
              mainAxisSpacing: context.dependsOnLayout(desktop: 20, orElse: 10),
              crossAxisSpacing: context.dependsOnLayout(desktop: 20, orElse: 10),
              itemBuilder: (context, index) => _SkillCard(skills[index]),
            ),
            const Gap(10),
            Container(
              padding: Pad(all: context.dependsOnLayout(desktop: 30, orElse: 20)),
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: context.colors.cardBackground,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: context.colors.cardBorder,
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
                    spacing: context.dependsOnLayout(desktop: 15, orElse: 10),
                    runSpacing: context.dependsOnLayout(desktop: 15, orElse: 10),
                    children: _techStackItems.map(_TechStackCard.new).toList(),
                  ),
                  const Gap(0),
                  Text(
                    context.t.home.skills.tech_stack.and_more,
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

  static const List<String> _techStackItems = [
    'Flutter',
    'Dart',
    'Kotlin',
    'Mobile',
    'Android',
    'iOS',
    'Web',
    'Future',
    'Streams',
    'Animation',
    'State',
    'API',
    'OOP',
    'Architecture',
    'AI',
    'LLM',
  ];
}
