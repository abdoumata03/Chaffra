import 'package:chaffra/localization/hardcoded_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CategoryButton extends StatelessWidget {
  final String title;
  const CategoryButton({required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 15.w),
      child: InkWell(
        child: Text(
          title.hardcoded,
          style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w700

          ),
        ),
      ),
    );
  }
}
