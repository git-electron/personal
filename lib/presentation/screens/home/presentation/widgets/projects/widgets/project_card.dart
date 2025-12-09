part of '../../../home_screen.dart';

class _ProjectCard extends StatelessWidget {
  const _ProjectCard(this.project);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: context.colors.cardBorder,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: project.cover.image(fit: BoxFit.cover),
          ),
          Padding(
            padding: Pad(all: context.layoutDependantValue(desktop: 30, orElse: 20)),
            child: Column(
              spacing: 5,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  project.title,
                  style: context.bodyStyle,
                ),
                Text(
                  project.description,
                  style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.5)),
                ),
                Wrap(
                  spacing: context.layoutDependantValue(desktop: 10, orElse: 8),
                  runSpacing: context.layoutDependantValue(desktop: 10, orElse: 8),
                  children: project.skills.map(Text.new).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
