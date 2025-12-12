part of '../../home_screen.dart';

class _Contact extends StatelessWidget {
  const _Contact();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => $<ContactFormBloc>(),
      child: MeasureSizeWrapper(
        shouldMeasureOnce: false,
        builder: (context, size) {
          return Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: size.height,
                width: size.width,
                child: const _ContactsBackground(),
              ),
              const WebPaddingWrapper(child: _ContactsContent()),
            ],
          );
        },
      ),
    );
  }
}
