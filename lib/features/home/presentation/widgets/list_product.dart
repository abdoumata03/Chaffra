import 'package:chaffra/localization/hardcoded_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../../../../themes/tokens.dart';

class ListCard extends StatelessWidget {
  final int itemCount = 8;

  const ListCard({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      child: GridView.count(
        padding: EdgeInsetsDirectional.only(start: 15.w),
        scrollDirection: Axis.horizontal,
        crossAxisCount: 3,
        crossAxisSpacing: 14.h,
        childAspectRatio: 0.4,
        children: List.generate(
          itemCount,
          (index) => HorizontalGameCard(),
        ),
      ),
    );
  }
}

class HorizontalGameCard extends StatelessWidget {
  const HorizontalGameCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: kDark[900],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.h)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.h),
            child: AspectRatio(
              aspectRatio: 9 / 16,
              child: Image.network(
                "https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dead by Daylight",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.titleSmall!),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'GLOBAL'.hardcoded,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.grey,
                      ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  '\$ 99',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
