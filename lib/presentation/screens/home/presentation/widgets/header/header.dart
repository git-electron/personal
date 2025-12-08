part of '../../home_screen.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 600,
        maxHeight: context.sizeOf.height.clamp(600, double.infinity),
      ),
      child: const Stack(
        alignment: Alignment.center,
        children: [
          _HeaderBackground(),
          WebPaddingWrapper(child: _HeaderContent()),
        ],
      ),
    );
  }
}
