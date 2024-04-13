// ignore_for_file: constant_identifier_names

import 'dart:ui';

import 'package:chaffra/localization/supported_locale.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreference {
  AppSharedPreference(this.sharedPreference);
  final SharedPreferences sharedPreference;

  static const _LOCALE_KEY = 'locale';

  void saveLocale(SupportedLocale locale) {
    sharedPreference.setString(_LOCALE_KEY, locale.code);
  }

  Locale? getLocale() {
    final bool isLocaleSet = sharedPreference.containsKey(_LOCALE_KEY);
    if (!isLocaleSet) return null;
    final String localeCode = sharedPreference.get(_LOCALE_KEY).toString();
    if (localeCode.isEmpty) throw 'Locale not found';
    return Locale(localeCode);
  }
}
