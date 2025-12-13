part of '../../../home_screen.dart';

class _ProjectsContent extends StatelessWidget {
  const _ProjectsContent();

  @override
  Widget build(BuildContext context) {
    final List<Project> projects = Project.values(context);

    return Padding(
      padding: const Pad(vertical: 100),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Text(
            context.t.home.projects.title,
            style: context.titleStyle,
          ),
          Text(
            context.t.home.projects.description,
            style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.5)),
          ),
          const Gap(10),
          AlignedGridView.count(
            shrinkWrap: true,
            itemCount: projects.length,
            padding: Pad.zero,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: context.dependsOnLayout(desktop: 20, orElse: 10),
            crossAxisSpacing: context.dependsOnLayout(desktop: 20, orElse: 10),
            crossAxisCount: context.dependsOnLayout(desktop: 3, tablet: 2, mobile: 1),
            itemBuilder: (context, index) => _ProjectCard(projects[index]),
          ),
        ],
      ),
    );
  }
}
