part of '../../../home_screen.dart';

class _SkillCard extends StatelessWidget {
  const _SkillCard(this.skill);

  final Skill skill;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.cardBackground,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: context.colors.cardBorder,
        ),
      ),
      child: Padding(
        padding: Pad(all: context.dependsOnLayout(desktop: 30, orElse: 20)),
        child: Column(
          spacing: 10,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const Pad(all: 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [context.colors.primary, context.colors.accent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: skill.icon.svg(),
            ),
            const Gap(0),
            Text(
              skill.title,
              style: context.bodyStyle,
            ),
            Text(
              skill.description,
              style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.5)),
            ),
          ],
        ),
      ),
    );
  }
}
