import 'package:chaffra/features/account/presentation/widgets/language_list_tile.dart';
import 'package:chaffra/localization/app_localizations_context.dart';
import 'package:chaffra/localization/supported_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.keyboard_backspace_outlined),
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
        child: ListView.separated(
          itemCount: SupportedLocale.values.length,
          shrinkWrap: true,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) => LanguageListTile(
            locale: SupportedLocale.values[index],
          ),
        ),
      ),
    );
  }
}
