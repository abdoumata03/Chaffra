import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes/tokens.dart';

class VerticalList extends StatefulWidget {
  final String image;
  final String title;
  final String price;
  const VerticalList({required this.image,required this.title,required this.price,super.key});

  @override
  State<VerticalList> createState() => _VerticalListState();
}

class _VerticalListState extends State<VerticalList> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 305.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index){ return
          Padding(
            padding:  EdgeInsets.only(left:15.w),
            child: Container(
                height: 300.h,
                width: 130.w,
                decoration: BoxDecoration(
                    color: kDark[700]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height:190.h,
                      width: 130.w,
                      child: AspectRatio(
                        aspectRatio: 9/16,
                        child: Image.network(widget.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 5.w),
                      child: Text(widget.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 5.w),
                      child: const Text("from",
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(height: 2.h,),
                    Padding(
                      padding:  EdgeInsets.only(left: 5.w),
                      child: Text(widget.price,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),



                  ],
                )
            ),
          );
        },

      ),
    );
  }
}
