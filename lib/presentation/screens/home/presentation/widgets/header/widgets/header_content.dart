part of '../../../home_screen.dart';

class _HeaderContent extends StatelessWidget {
  const _HeaderContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'This page is currently in development... May be unstable :)', //TODO: remove
          style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.5)),
        ),
        context.layoutDependantValue(
          orElse: Row(
            spacing: context.layoutDependantValue(desktop: 40, orElse: 20),
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              _Avatar(),
              _Title(),
            ],
          ),
          mobile: const Column(
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
        const _Description(),
        const _Buttons(),
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
        tablet: 120,
        orElse: 150,
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
                  height: 0.95,
                ),
              ),
            ],
            style: context.headerStyle.copyWith(height: 0.95),
          ),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(text: context.t.home.header.introduction_pt1),
              TextSpan(
                text: context.t.home.header.introduction_pt2,
                style: context.headerStyle.copyWith(
                  color: context.colors.primary,
                  height: 0.95,
                ),
              ),
            ],
            style: context.headerStyle.copyWith(height: 0.95),
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

class _Buttons extends StatelessWidget {
  const _Buttons();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          spacing: context.layoutDependantValue(desktop: 20, orElse: 10),
          children: [
            AppButton(
              onTap: () {},
              icon: Assets.icons.contacts.contact.light,
              text: context.t.home.header.contact_button,
            ),
            AppButton(
              onTap: () => $<AppRouter>().push(const ProjectsRoute()),
              icon: Assets.icons.general.project.light,
              text: context.t.home.header.projects_button,
            ),
            if (!context.isMobileLayout) ...[
              Container(
                height: context.layoutDependantValue(desktop: 20, orElse: 16),
                width: 2,
                margin: const Pad(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: context.colors.onBackground.copyWithOpacity(.75),
                ),
              ),
              const _Contacts(),
            ],
          ],
        ),
        if (context.isMobileLayout) const _Contacts(),
      ],
    );
  }
}

class _Contacts extends StatelessWidget {
  const _Contacts();

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: context.layoutDependantValue(mobile: 40, orElse: 20),
      children: [
        AppIconButton.image(
          image: Assets.images.contacts.github.light,
          onTap: () {},
        ),
        AppIconButton.image(
          image: Assets.images.contacts.hh.light,
          onTap: () {},
        ),
        AppIconButton.image(
          image: Assets.images.contacts.linkedin.light,
          onTap: () {},
        ),
      ],
    );
  }
}
