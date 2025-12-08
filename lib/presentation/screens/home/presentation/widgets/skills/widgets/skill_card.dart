part of '../../../home_screen.dart';

class _SkillCard extends StatefulWidget {
  const _SkillCard(this.skill);

  final Skill skill;

  @override
  State<_SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<_SkillCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.basic,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        padding: Pad(all: context.layoutDependantValue(desktop: 30, orElse: 20)),
        decoration: BoxDecoration(
          color: context.colors.onBackground.copyWithOpacity(_isHovered ? .1 : .05),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: context.colors.onBackground.copyWithOpacity(.1),
          ),
        ),
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
              child: widget.skill.icon.svg(),
            ),
            const Gap(0),
            Text(
              widget.skill.title,
              style: context.bodyStyle,
            ),
            Text(
              widget.skill.description,
              style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.5)),
            ),
          ],
        ),
      ),
    );
  }
}
