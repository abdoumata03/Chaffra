import 'package:chaffra/localization/locale_provider.dart';
import 'package:chaffra/routing/router_config.dart';
import 'package:chaffra/services/shared_preferences/providers.dart';
import 'package:chaffra/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  runApp(ProviderScope(
    overrides: [
      sharedPreferencesProvider.overrideWithValue(prefs),
    ],
    child: const MainApp(),
  ));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeControllerProvider);
    return ScreenUtilInit(
        designSize: const Size(360, 800),
        builder: (_, child) {
          return MaterialApp.router(  
            debugShowCheckedModeBanner: false,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            locale: locale,
            theme: AppTheme.darkTheme.copyWith(
              textTheme: locale == const Locale("ar")
                  ? GoogleFonts.cairoTextTheme()
                      .apply(bodyColor: Colors.white)
                  : GoogleFonts.dmSansTextTheme()
                      .apply(bodyColor: Colors.white),
            ),
            routerConfig: routerConfig,
          );
        });
  }
}
