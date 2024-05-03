import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../../../../themes/tokens.dart';

class ListCard extends StatelessWidget {
  final int itemCount = 10;

  const ListCard({super.key});
  @override
  Widget build(BuildContext context) {
    final lastItemPadding = MediaQuery.of(context).size.width - 285.w;
    return SizedBox(
        height: 180.h,
        child: ScrollSnapList(

          selectedItemAnchor: SelectedItemAnchor.START,
          itemSize: 285.w,
          onItemFocus: (index) {},
          duration: 300,
          scrollDirection: Axis.horizontal,
          itemCount: itemCount,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(
                  start: 15.w,
                  end: index == itemCount - 1 ? lastItemPadding : 0),
              child: Material(
                color: kDark[700],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.h)),
                child: Container(
                  height: 180.h,
                  width: 270.w,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(8.h)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.h),
                    child: Row(
                      children: [
                        AspectRatio(
                          aspectRatio: 9 / 16,
                          child: Image.network(
                            "https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 15.w,
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 15.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dead by Light 2023",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  'From',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                SizedBox(
                                  height: 4.h,
                                ),
                                Text(
                                  '99\$',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge!
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ));
  }
}
