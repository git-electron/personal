part of '../../home_screen.dart';

class _Header extends StatelessWidget {
  const _Header({required this.animateToItem});

  final void Function(int index) animateToItem;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 600,
        maxHeight: context.sizeOf.height.clamp(600, double.infinity),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const _HeaderBackground(),
          WebPaddingWrapper(child: _HeaderContent(animateToItem: animateToItem)),
        ],
      ),
    );
  }
}
