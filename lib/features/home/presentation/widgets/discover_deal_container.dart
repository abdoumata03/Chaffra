import 'package:chaffra/themes/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiscoverDealContainer extends StatelessWidget {
  const DiscoverDealContainer({
    super.key,
    required this.title,
    required this.description,
    required this.url,
  });

  final String title;
  final String description;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 60.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        color: kDark[700],
      ),
      child: Row(
        children: [
          Container(
            color: Colors.red,
            child: AspectRatio(
              aspectRatio: 10 / 16,
              child: Image.network(
                url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Flexible(
            child: Row(
              children: [
                Flexible(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey, fontSize: 11.sp),
                    ),
                  ],
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
