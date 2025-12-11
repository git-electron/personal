part of '../../../home_screen.dart';

class _ContactsBackground extends StatelessWidget {
  const _ContactsBackground();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return Opacity(
          opacity: context.isDarkTheme ? .5 : 1,
          child: Assets.images.backgrounds.contactsBackground.image(fit: BoxFit.cover),
        );
      },
    );
  }
}
