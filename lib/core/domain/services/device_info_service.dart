import 'package:device_info_plus/device_info_plus.dart';
import 'package:injectable/injectable.dart';

import '../models/device_type.dart';

@singleton
class DeviceInfoService {
  final DeviceInfoPlugin _deviceInfoPlugin;

  DeviceInfoService(this._deviceInfoPlugin);

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    _webBrowserInfo = await _deviceInfoPlugin.webBrowserInfo;
  }

  late final WebBrowserInfo _webBrowserInfo;

  DeviceType get deviceType {
    final String? platform = _webBrowserInfo.platform?.toLowerCase();

    if (platform == null) return DeviceType.desktop;
    if (platform.contains('mac') || platform.contains('win') || platform.contains('linux')) return DeviceType.desktop;
    return DeviceType.mobile;
  }

  bool get isMobileDevice => deviceType == DeviceType.mobile;
  bool get isDesktopDevice => deviceType == DeviceType.desktop;
}
