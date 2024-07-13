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
    return Scaffold(
      body: SingleChildScrollView(
          child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Row(
                  children: [
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        context.pushNamed(pageNames.notifications);
                      },
                      icon: Icon(FluentIcons.alert_24_regular),
                      iconSize: 28.r,
                    ),
                    IconButton(
                      icon: Icon(FluentIcons.settings_24_regular),
                      onPressed: () {
                        context.pushNamed(pageNames.settings);
                      },
                      iconSize: 28.r,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40.r,
                      backgroundColor: Colors.grey,
                      child: Icon(
                        FluentIcons.person_24_regular,
                        size: 40.r,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 20.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          context.loc.notLoggedIn,
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                          child: Button(
                              onPressed: () {},
                              child: Text(context.loc.signIn)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 18.h),
              Container(
                color: Colors.grey.withOpacity(0.2),
                height: 8.h,
              ),
              SizedBox(height: 10.h),
              Column(
                children: [
                  SettingItem(
                    icon: FluentIcons.person_20_regular,
                    title: context.loc.myProfile,
                  ),
                  Divider(
                    indent: 40.w,
                  ),
                  SettingItem(
                    icon: FluentIcons.history_20_regular,
                    title: context.loc.orderHistory,
                  ),
                  Divider(
                    indent: 40.w,
                  ),
                  SettingItem(
                    icon: FluentIcons.star_20_regular,
                    title: context.loc.whishlist,
                  ),
                  Divider(
                    indent: 40.w,
                  ),
                  SettingItem(
                    icon: FluentIcons.person_support_20_regular,
                    title: context.loc.support,
                  ),
                  Divider(
                    indent: 40.w,
                  ),
                  SettingItem(
                    icon: FluentIcons.document_one_page_20_regular,
                    title: context.loc.temsAndConditions,
                  ),
                  Divider(
                    indent: 40.w,
                  ),
                  SettingItem(
                    icon: FluentIcons.shield_person_20_regular,
                    title: context.loc.privacyPolicy,
                  ),
                  Divider(
                    indent: 40.w,
                  ),
                  SettingItem(
                    icon: FluentIcons.info_20_regular,
                    title: context.loc.aboutUs,
                  ),
                ],
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
      )),
    );
  }
}
