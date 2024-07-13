import 'package:chaffra/localization/app_localizations_context.dart';
import 'package:chaffra/themes/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.h), color: kDark[700]),
        child: Row(
          children: [
            SizedBox(
              width: 9.w,
            ),
            Icon(
              Icons.search,
              color: Colors.white.withOpacity(0.8),
            ),
            SizedBox(
              width: 5.w,
            ),
            Text(
              context.loc.search,
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            const Spacer(),
            Icon(
              Icons.mic_outlined,
              color: Colors.white.withOpacity(0.8),
            ),
            SizedBox(
              width: 9.w,
            ),
          ],
        ),
      ),
    );
  }
}
