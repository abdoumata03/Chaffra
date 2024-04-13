import 'package:chaffra/services/shared_preferences/app_shared_preferences.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sharedPreferencesProvider = Provider.autoDispose<SharedPreferences>(
    (ref) => throw UnimplementedError());

final appSharedPreferenceProvider =
    Provider.autoDispose<AppSharedPreference>((ref) {
  final prefs = ref.watch(sharedPreferencesProvider);
  return AppSharedPreference(prefs);
});
