import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../../../../themes/tokens.dart';
class ListCard extends StatefulWidget {
  const ListCard({super.key});

  @override
  State<ListCard> createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 180.h,
        child:  ScrollSnapList(
          selectedItemAnchor: SelectedItemAnchor.START,
          itemSize: 400,
          onItemFocus: (index) {},
          duration: 300,
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index){ return
            Padding(
              padding:  EdgeInsets.only(left:21.w),
              child: Container(
                height: 180.h,
                width: 270.w,
                decoration: BoxDecoration(
                    color: kDark[700]
                ),
                child: Row(
                  children: [


                    AspectRatio(
                      aspectRatio: 9/16,
                      child: Image.network("https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 9.w,),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10.h,),
                          Text("Dead by Light 2023",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600

                            ),),
                          SizedBox(height: 10.h,),
                          const Text('From'),
                          SizedBox(height: 10.h,),
                          const Text('99\$'),

                        ],
                      ),
                    )



                  ],
                ),
              ),
            );
          },

        )
    );
  }
}
