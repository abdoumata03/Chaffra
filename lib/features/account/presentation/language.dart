import 'package:chaffra/features/account/presentation/widgets/language_list_tile.dart';
import 'package:chaffra/localization/app_localizations_context.dart';
import 'package:chaffra/localization/supported_locale.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(FluentIcons.arrow_left_24_regular),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          context.loc.language,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
          child: Wrap(
            runSpacing: 10.h,
            children: List.generate(
              SupportedLocale.values.length,
              (index) => LanguageListTile(
                locale: SupportedLocale.values[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

