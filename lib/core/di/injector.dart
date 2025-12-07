import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injector.config.dart';

final $ = GetIt.instance;

@InjectableInit()
Future<GetIt> initInjector() async {
  await $.init();

  await $.allReady().timeout(
    const Duration(seconds: 7),
    onTimeout: () => throw Exception('Injector: timeout'),
  );

  return $;
}
