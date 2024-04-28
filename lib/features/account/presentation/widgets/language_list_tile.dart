import 'package:chaffra/localization/locale_provider.dart';
import 'package:chaffra/localization/supported_locale.dart';
import 'package:chaffra/themes/tokens.dart';
import 'package:country_flags/country_flags.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LanguageListTile extends ConsumerWidget {
  const LanguageListTile({
    super.key,
    required this.locale,
  });

  final SupportedLocale locale;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLocale = ref.watch(localeControllerProvider);

    return ListTile(
      trailing: selectedLocale.name == locale.name
          ? const Icon(FluentIcons.checkmark_24_filled)
          : null,
      leading: CountryFlag.fromCountryCode(locale.countryCode, width: 20.w,),
      shape: RoundedRectangleBorder(
        side: BorderSide(
            color:
                selectedLocale.name == locale.name ? primaryColor : Colors.grey,
            width: 1),
        borderRadius: BorderRadius.circular(5),
      ),
      title: Text(locale.name),
      onTap: () {
        ref.read(localeControllerProvider.notifier).changeLanguage(locale);
      },
    );
  }
}
