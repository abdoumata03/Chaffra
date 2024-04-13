import 'package:chaffra/localization/app_localizations_context.dart';
import 'package:chaffra/localization/locale_provider.dart';
import 'package:chaffra/localization/supported_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState createState() => _HomeState();
}

class _HomeState extends ConsumerState {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    final locale = ref.watch(localeControllerProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(context.loc.appTitle),
            Switch(
              value: switchValue,
              onChanged: (bool value) {
                setState(() {
                  switchValue = value;
                });
                if (value) {
                  ref
                      .read(localeControllerProvider.notifier)
                      .changeLanguage(SupportedLocale.ar);
                } else {
                  ref
                      .read(localeControllerProvider.notifier)
                      .changeLanguage(SupportedLocale.en);
                }
              },
            ),
            Text("${context.loc.currentLanguage} : ${locale.name}"),
          ],
        ),
      ),
    );
  }
}
