import 'package:injectable/injectable.dart';
import 'package:landing/core/extensions/string_extensions.dart';
import 'package:url_launcher/url_launcher.dart';

@injectable
class UrlLauncher {
  Future<bool> launchUrlString(String url) async {
    final Uri? uri = Uri.tryParse(url);
    if (uri == null) return false;
    if (!(await canLaunchUrl(uri))) return false;
    return await launchUrl(uri);
  }

  Future<bool> launchPhoneNumberString(String number) async {
    return await launchUrlString('tel:${number.extractNumerals()}');
  }

  Future<bool> launchEmailString(String email) async {
    return await launchUrlString('mailto:$email');
  }
}
