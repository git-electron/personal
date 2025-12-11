// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:device_info_plus/device_info_plus.dart' as _i833;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:landing/core/di/locator.dart' as _i518;
import 'package:landing/core/domain/bloc/theme_bloc/theme_bloc.dart' as _i442;
import 'package:landing/core/domain/services/device_info_service.dart' as _i785;
import 'package:landing/core/domain/services/toast_service.dart' as _i210;
import 'package:landing/core/router/router.dart' as _i136;
import 'package:landing/core/utils/debouncer/debouncer.dart' as _i516;
import 'package:landing/core/utils/url_launcher/url_launcher.dart' as _i1054;
import 'package:landing/presentation/screens/home/data/contact_form_repository.dart'
    as _i693;
import 'package:landing/presentation/screens/home/data/contact_form_repository_impl.dart'
    as _i229;
import 'package:landing/presentation/screens/home/domain/service/contact_form_service.dart'
    as _i508;
import 'package:landing/presentation/screens/home/domain/service/contact_form_service_impl.dart'
    as _i450;
import 'package:logger/logger.dart' as _i974;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final locator = _$Locator();
    gh.factory<_i974.Logger>(() => locator.logger);
    gh.factory<_i833.DeviceInfoPlugin>(() => locator.deviceInfoPlugin);
    gh.factory<_i1054.UrlLauncher>(() => _i1054.UrlLauncher());
    gh.factory<_i516.Debouncer>(() => _i516.Debouncer());
    gh.singleton<_i210.ToastService>(() => _i210.ToastService());
    gh.singleton<_i442.ThemeBloc>(() => _i442.ThemeBloc());
    gh.singleton<_i136.AppRouter>(() => _i136.AppRouter(gh<_i974.Logger>()));
    await gh.singletonAsync<_i785.DeviceInfoService>(
      () {
        final i = _i785.DeviceInfoService(gh<_i833.DeviceInfoPlugin>());
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.factory<_i693.ContactFormRepository>(
        () => _i229.ContactFormRepositoryImpl());
    gh.factory<_i508.ContactFormService>(
        () => _i450.ContactFormServiceImpl(gh<_i693.ContactFormRepository>()));
    return this;
  }
}

class _$Locator extends _i518.Locator {}
