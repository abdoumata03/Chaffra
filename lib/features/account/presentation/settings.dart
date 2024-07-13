import 'package:chaffra/features/account/presentation/widgets/settings_item.dart';
import 'package:chaffra/localization/app_localizations_context.dart';
import 'package:chaffra/localization/hardcoded_string.dart';
import 'package:chaffra/localization/locale_provider.dart';
import 'package:chaffra/localization/supported_locale.dart';
import 'package:chaffra/routing/router_page_names.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeControllerProvider);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(FluentIcons.arrow_left_24_regular),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          context.loc.settings,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: Column(
                children: [
                  SettingItem(
                    icon: FluentIcons.local_language_20_regular,
                    title: context.loc.language,
                    value: locale.name,
                    onTap: () {
                      context.pushNamed(pageNames.language);
                    },
                  ),
                  const Divider(),
                  SettingItem(
                    icon: FluentIcons.currency_dollar_euro_20_regular,
                    title: context.loc.currency,
                    value: "EUR".hardcoded,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
