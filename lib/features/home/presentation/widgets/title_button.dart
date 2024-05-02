import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TitleButton extends StatelessWidget {
  final String title;
  const TitleButton({required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 15.w,top: 20.h,bottom: 15.h,right: 15.w),
      child: InkWell(
        child: Row(
          children: [
            Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 13.sp
            ),),
            SizedBox(width: 10.w,),
            const Expanded(child: Divider(thickness: 0.2,color: Colors.white,)),
            SizedBox(width: 8.w,),
            Icon(Icons.arrow_forward_ios,size: 18.h,),


          ],
        ),
      ),
    );
  }
}
