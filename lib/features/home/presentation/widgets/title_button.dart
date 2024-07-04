import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chaffra/localization/app_localizations_context.dart';

class TitleButton extends StatelessWidget {
  final String title;
  const TitleButton({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 15.w, top: 20.h, bottom: 15.h, right: 15.w),
      child: InkWell(
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13.sp),
            ),
            SizedBox(
              width: 10.w,
            ),
            const Spacer(),
            SizedBox(
              width: 8.w,
            ),
            Text(
              context.loc.seeMore,
              style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              width: 5.w,
            ),
            Icon(
              Icons.arrow_forward_ios,
              size: 16.h,
            ),
          ],
        ),
      ),
    );
  }
}
