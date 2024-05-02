import 'package:chaffra/localization/hardcoded_string.dart';
import 'package:chaffra/localization/locale_provider.dart';
import 'package:chaffra/localization/supported_locale.dart';
import 'package:chaffra/routing/router_page_names.dart';
import 'package:chaffra/shared/widgets/button.dart';
import 'package:chaffra/shared/widgets/dark_container.dart';
import 'package:chaffra/localization/app_localizations_context.dart';
import 'package:chaffra/features/account/presentation/widgets/settings_item.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Profile extends ConsumerWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(localeControllerProvider);
    return SingleChildScrollView(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DarkContainer(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                children: [
                  Text(
                    context.loc.welcomeToChaffra,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    context.loc.welcomeMessage,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.grey,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: double.infinity,
                    child: Button(
                        onPressed: () {}, child: Text(context.loc.signIn)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Text(context.loc.myAccount),
            SizedBox(height: 15.h),
            DarkContainer(
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.h),
              child: Column(
                children: [
                  SettingItem(
                    icon: FluentIcons.person_20_regular,
                    title: context.loc.myProfile,
                    internal: false,
                  ),
                  SettingItem(
                    icon: FluentIcons.history_20_regular,
                    title: context.loc.orderHistory,
                    internal: false,
                  ),
                  SettingItem(
                    icon: FluentIcons.star_20_regular,
                    title: context.loc.whishlist,
                    internal: false,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Text(context.loc.settings),
            SizedBox(height: 15.h),
            DarkContainer(
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.h),
              child: Column(
                children: [
                  SettingItem(
                    icon: FluentIcons.local_language_20_regular,
                    title: context.loc.language,
                    value: locale.name,
                    onTap: () {
                      // Navigate to the language selection page
                      context.pushNamed(pageNames.language);
                    },
                  ),
                  SettingItem(
                    icon: FluentIcons.currency_dollar_euro_20_regular,
                    title: context.loc.currency,
                    value: "EUR".hardcoded,
                  ),
                  SettingItem(
                    icon: FluentIcons.alert_20_regular,
                    title: context.loc.notifications,
                    internal: false,
                    onTap: () async {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            Text(context.loc.helpAndSupport),
            SizedBox(height: 15.h),
            DarkContainer(
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.h),
              child: SettingItem(
                icon: FluentIcons.person_support_20_regular,
                title: context.loc.support,
                internal: false,
              ),
            ),
            SizedBox(height: 15.h),
            Text(context.loc.legalInformation),
            SizedBox(height: 15.h),
            DarkContainer(
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.h),
              child: Column(
                children: [
                  SettingItem(
                    icon: FluentIcons.document_one_page_20_regular,
                    title: context.loc.temsAndConditions,
                  ),
                  SettingItem(
                    icon: FluentIcons.shield_person_20_regular,
                    title: context.loc.privacyPolicy,
                  ),
                  const Divider(),
                  SettingItem(
                    icon: FluentIcons.info_20_regular,
                    title: context.loc.aboutUs,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h),
            SizedBox(
              width: double.infinity,
              child: Text(
                " ${context.loc.allRightsReserved} \n ${context.loc.version}"
                    .hardcoded,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey, height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
