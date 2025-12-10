part of '../../../home_screen.dart';

class _ContactsBackground extends StatelessWidget {
  const _ContactsBackground();

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .5,
      child: Assets.images.backgrounds.contactsBackground.image(fit: BoxFit.cover),
    );
  }
}
