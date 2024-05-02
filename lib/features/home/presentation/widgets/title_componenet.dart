import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TitleDiv extends StatelessWidget {
  final String title;
  const TitleDiv({required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left:15.w,top: 20.h,bottom: 15.h,right: 15.w),
      child: Row(
        children: [
          Text(title,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 13.sp
            ),),
          SizedBox(width: 10.w,),
          const Expanded(child: Divider(thickness: 0.2,color: Colors.white,)),


        ],
      ),
    );
  }
}
