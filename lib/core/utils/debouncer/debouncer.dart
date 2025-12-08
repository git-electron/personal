import 'dart:async';

import 'package:injectable/injectable.dart';

import '../types/types.dart';

@injectable
class Debouncer {
  Debouncer();

  Timer? _timer;

  void run(
    VoidCallback action, {
    Duration duration = const Duration(milliseconds: 500),
  }) {
    if (_timer != null) _timer!.cancel();

    _timer = Timer(duration, action);
  }
}
