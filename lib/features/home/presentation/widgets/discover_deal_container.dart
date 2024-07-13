import 'package:chaffra/themes/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GiftCardContainer extends StatelessWidget {
  const GiftCardContainer({
    super.key,
    required this.title,
    required this.url,
  });

  final String title;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        color: kDark[700],
      ),
      child: Row(
        children: [
          Image.asset(
            url,
            height: 65.h,
          ),
          SizedBox(width: 10.w),
          Flexible(
            child: Row(
              children: [
                Flexible(
                    child: Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
