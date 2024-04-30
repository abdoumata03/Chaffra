import 'package:chaffra/themes/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CardProduct extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  const CardProduct({required this.image,required this.title,required this.price,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180.h,
      width: 270.w,
      decoration: BoxDecoration(
          color: kDark[700]
      ),
      child: Row(
        children: [
          AspectRatio(

            aspectRatio: 9/16,
            child: Image.network(image,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 9.w,),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10.h,),
                Text(title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600

                  ),),
                SizedBox(height: 10.h,),
                Text('From'),
                SizedBox(height: 10.h,),
                Text(price+'\$'),

              ],
            ),
          )

        ],
      ),
    );
  }
}
