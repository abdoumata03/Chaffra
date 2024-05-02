import 'dart:ui';

enum SupportedLocale { en, ar }

extension SupportedLocalExtension on SupportedLocale {
  String get code => toString().split('.').last;
  String get name {
    String name;
    switch (this) {
      case SupportedLocale.en:
        name = 'English';
        break;
      case SupportedLocale.ar:
        name = 'العربية';
        break;
    }
    return name;
  }

  String get countryCode {
    String countryCode;
    switch (this) {
      case SupportedLocale.en:
        countryCode = 'us';
        break;
      case SupportedLocale.ar:
        countryCode = 'sa';
        break;
    }
    return countryCode;
  }
}

extension LocaleExtension on Locale {
  String get name {
    late String name;

    switch (this) {
      case const Locale('en'):
        name = 'English';
        break;
      case const Locale('ar'):
        name = 'العربية';
        break;
    }
    return name;
  }

  String get countryCode {
    late String countryCode;
    switch (this) {
      case const Locale('en'):
        countryCode = 'us';
        break;
      case const Locale('ar'):
        countryCode = 'sa';
        break;
    }
    return countryCode;
  }
}
