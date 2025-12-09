part of '../../../home_screen.dart';

class _TechStackCard extends StatelessWidget {
  const _TechStackCard(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ColoredBox(
        color: context.colors.accentCardBackground,
        child: Padding(
          padding: const Pad(
            vertical: 8,
            horizontal: 20,
          ),
          child: Text(
            title,
            style: context.bodyStyle,
          ),
        ),
      ),
    );
  }
}
