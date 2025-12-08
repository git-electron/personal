part of '../../../home_screen.dart';

class _TechStackCard extends StatefulWidget {
  const _TechStackCard(this.title);

  final String title;

  @override
  State<_TechStackCard> createState() => _TechStackCardState();
}

class _TechStackCardState extends State<_TechStackCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.basic,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Container(
        padding: const Pad(
          vertical: 8,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          color: context.colors.onBackground.copyWithOpacity(_isHovered ? .1 : .05),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: context.colors.onBackground.copyWithOpacity(.1),
          ),
        ),
        child: Text(
          widget.title,
          style: context.bodyStyle,
        ),
      ),
    );
  }
}
