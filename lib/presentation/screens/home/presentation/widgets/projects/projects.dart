part of '../../home_screen.dart';

class _Projects extends StatelessWidget {
  const _Projects();

  @override
  Widget build(BuildContext context) {
    return MeasureSizeWrapper(
      shouldMeasureOnce: false,
      builder: (context, size) {
        return Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: size.height,
              child: const _ProjectsBackground(),
            ),
            const WebPaddingWrapper(child: _ProjectsContent()),
          ],
        );
      },
    );
  }
}
