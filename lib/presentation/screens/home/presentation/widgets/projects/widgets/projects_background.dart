part of '../../../home_screen.dart';

class _ProjectsBackground extends StatelessWidget {
  const _ProjectsBackground();

  @override
  Widget build(BuildContext context) {
    return const _ProjectsBackgroundGrid();
  }
}

class _ProjectsBackgroundGrid extends StatelessWidget {
  const _ProjectsBackgroundGrid();

  static const double space = 60;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final double width = constraints.maxWidth;
        final double height = constraints.minHeight;
        final h = Container(width: 1, height: height, color: context.colors.onBackground.copyWithOpacity(.025));
        final v = Container(width: width, height: 1, color: context.colors.onBackground.copyWithOpacity(.025));
        return Stack(
          children: <Widget>[
            ...List.generate((width / space).round(), (index) => Positioned(left: index * space, child: h)),
            ...List.generate((height / space).round(), (index) => Positioned(top: index * space, child: v)),
          ],
        );
      },
    );
  }
}
