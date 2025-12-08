part of '../../home_screen.dart';

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 600,
        maxHeight: context.sizeOf.height,
      ),
      child: Center(
        child: _Greeting(),
      ),
    );
  }
}
