part of '../../home_screen.dart';

class _Contact extends StatelessWidget {
  const _Contact();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<ContactFormBloc>(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        bloc: context.read(),
        builder: (context, state) {
          return DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                opacity: context.isDarkTheme ? .5 : 1,
                image: context.themeDependantValue(
                  dark: Assets.images.backgrounds.contactsBackground.dark.provider(),
                  light: Assets.images.backgrounds.contactsBackground.light.provider(),
                ),
              ),
            ),
            child: const WebPaddingWrapper(child: _ContactsContent()),
          );
        },
      ),
    );
  }
}
