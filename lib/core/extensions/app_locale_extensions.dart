import '../i18n/app_localization.g.dart';

extension AppLocaleExtensions on AppLocale {
  String get title => switch (this) {
        AppLocale.en => 'English',
        AppLocale.ru => 'Русский',
      };
}
