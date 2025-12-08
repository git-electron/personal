part of '../../../home_screen.dart';

class _HeaderBackground extends StatelessWidget {
  const _HeaderBackground();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        WebPaddingWrapper(child: _BackgroundBlur()),
        _BackgroundGrid(),
      ],
    );
  }
}

class _BackgroundBlur extends StatelessWidget {
  const _BackgroundBlur();

  @override
  Widget build(BuildContext context) {
    return Transform.flip(
      flipX: context.isMobileLayout,
      child: Assets.images.backgrounds.headerBackground.image(fit: BoxFit.fitWidth),
    );
  }
}

class _BackgroundGrid extends StatelessWidget {
  const _BackgroundGrid();

  static const double space = 30;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double width = constraints.maxWidth;
        double height = constraints.maxHeight;
        var h = Container(width: 1, height: height, color: context.colors.onBackground.copyWithOpacity(.025));
        var v = Container(width: width, height: 1, color: context.colors.onBackground.copyWithOpacity(.025));
        return Stack(children: <Widget>[
          ...List.generate((width / space).round(), (index) => Positioned(left: index * space, child: h)),
          ...List.generate((height / space).round(), (index) => Positioned(top: index * space, child: v)),
        ]);
      },
    );
  }
}
