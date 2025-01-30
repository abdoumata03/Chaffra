import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes/tokens.dart';
class BundleCart extends StatefulWidget {
  const BundleCart({super.key});

  @override
  State<BundleCart> createState() => _BundleCartState();
}

class _BundleCartState extends State<BundleCart> {
  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: 300.h,
        child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
      return Padding(
          padding: EdgeInsetsDirectional.only(start: index==0 ?0:15.w),
      child:Container(
      height: 300.h,
      width: 280.w,
      decoration: BoxDecoration(
          color:kDark[500],
          borderRadius: BorderRadius.circular(10.h)
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 20.w,top: 25.h),
            child: Row(
              children: [
                Text('BUY CHEAPER IN BUNDLE',
                  style: TextStyle(color: Colors.grey,fontSize: 11.sp,fontWeight: FontWeight.w400),),
                SizedBox(width: 5.w),
                Expanded(child: Divider(thickness: 0.2,color: Colors.grey,)),
                SizedBox(width: 10.w,),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,),
          SizedBox(
            height: 150.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsetsDirectional.only(start: index==0 ?30.w:15.w),
                  child: Container  (
                      width: 100.w,
                      decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(5.h)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 150.h,
                            width: 100.w,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5.h),
                              child: AspectRatio(
                                aspectRatio: 9 / 16,
                                child: Image.network(
                                  "https://fifauteam.com/images/covers/fc24/hd/ultimate.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),

                        ],
                      )),
                );
              },
            ),
          ),
          SizedBox(
            height: 20.h,),
          Row(children: [
            SizedBox(
              width: 20.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('27.81', style: TextStyle(
                    color: Colors.white,

                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp
                ),),

                Text('86.99',
                  style: TextStyle(
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough,
                      fontWeight: FontWeight.w500,
                      fontSize: 9.sp
                  ),),
                SizedBox(
                  height: 5.h,),
                Container(
                  height: 15.h,
                  width: 75.w,
                  decoration: BoxDecoration(
                      color:saleColor,
                      borderRadius: BorderRadius.circular(4.h)
                  ),
                  child: Center(
                    child: Text('You save : 58.39',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 8.sp
                      ),),
                  ),
                )
              ],),
            SizedBox(width: 95.w,),
            Container(
              height: 40.h,
              width: 70.w,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(4.h)
              ),
              child: Center(child: Text("Add to cart",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 10.sp
                ),
              ),),
            )


          ],),

        ],
      ),

      )
      );
        },
        ),
      );
  }
}
