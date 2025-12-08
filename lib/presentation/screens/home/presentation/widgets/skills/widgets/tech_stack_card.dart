part of '../../../home_screen.dart';

class _TechStackCard extends StatelessWidget {
  const _TechStackCard(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const Pad(
        vertical: 8,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: context.colors.onBackground.copyWithOpacity(.05),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: context.colors.onBackground.copyWithOpacity(.1),
        ),
      ),
      child: Text(
        title,
        style: context.bodyStyle,
      ),
    );
  }
}
