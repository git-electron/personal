part of '../../../home_screen.dart';

class _Greeting extends StatelessWidget {
  const _Greeting();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        context.layoutDependantValue(
          orElse: Row(
            spacing: context.layoutDependantValue(desktop: 40, orElse: 20),
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _Avatar(),
              _Title(),
            ],
          ),
          mobile: Column(
            spacing: 30,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Avatar(),
              _Title(),
            ],
          ),
        ),
        _Description(),
      ],
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar();

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: context.layoutDependantValue(
        desktop: 150,
        orElse: 120,
      ),
      child: Assets.images.general.a3dAvatarFilled.image(),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: context.t.home.header.hello_pt1),
              TextSpan(
                text: context.t.home.header.hello_pt2,
                style: context.headerStyle.copyWith(
                  color: context.colors.primary,
                  height: 0.9,
                ),
              ),
            ],
            style: context.headerStyle.copyWith(height: 0.9),
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: context.t.home.header.introduction_pt1),
              TextSpan(
                text: context.t.home.header.introduction_pt2,
                style: context.headerStyle.copyWith(color: context.colors.primary),
              ),
            ],
            style: context.headerStyle,
          ),
        ),
      ],
    );
  }
}

class _Description extends StatelessWidget {
  const _Description();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: context.layoutDependantValue(desktop: 700, orElse: 600),
      ),
      child: FormattedText(
        context.t.home.header.description,
        style: context.bodyStyle.copyWith(
          fontSize: context.layoutDependantValue(
            desktop: 20,
            tablet: 16,
            mobile: 14,
          ),
        ),
      ),
    );
  }
}
