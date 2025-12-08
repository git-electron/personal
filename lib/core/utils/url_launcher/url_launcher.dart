import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../extensions/string_extensions.dart';

@injectable
class UrlLauncher {
  Future<bool> launchUrlString(String url) async {
    final Uri? uri = Uri.tryParse(url);
    if (uri == null) return false;
    if (!(await canLaunchUrl(uri))) return false;
    return launchUrl(uri);
  }

  Future<bool> launchPhoneNumberString(String number) async {
    return launchUrlString('tel:${number.extractNumerals()}');
  }

  Future<bool> launchEmailString(String email) async {
    return launchUrlString('mailto:$email');
  }
}
