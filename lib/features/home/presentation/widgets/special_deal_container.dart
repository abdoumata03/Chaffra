import 'package:chaffra/localization/hardcoded_string.dart';
import 'package:chaffra/themes/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialDealContainer extends StatelessWidget {
  const SpecialDealContainer({
    super.key,
    required this.dealAmount,
  });

  final int dealAmount;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      clipBehavior: Clip.hardEdge,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.h),
            color: kDark[700],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Games under'.hardcoded,
                      style: TextStyle(
                        fontSize: 10.sp,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.h),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.3),
                          width: 0.5.h,
                        ),
                      ),
                      child: RichText(
                          text: TextSpan(
                        text: dealAmount.toString(),
                        style: TextStyle(
                            fontSize: 24.sp, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: '\$',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: kDark[300],
                            ),
                          ),
                        ],
                      )),
                    ),
                  ],
                ),
                const Spacer(),
                Transform.scale(
                  scaleX: -1,
                  scaleY: -1,
                  child: Opacity(
                    opacity: 0.1,
                    child: Icon(
                      Icons.trending_up_outlined,
                      size: 48.h,
                    ),
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.chevron_right,
                  size: 16.h,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
