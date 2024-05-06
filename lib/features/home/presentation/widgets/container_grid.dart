import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes/tokens.dart';

class GridContainer extends StatelessWidget {
  final String title;
  const GridContainer({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        color: kDark[700],
      ),
      child: Center(child: Text(title)),
    );
  }
}
