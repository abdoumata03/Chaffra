import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes/tokens.dart';

class PromotionCard extends StatelessWidget {
  final String title;
  final String price;
  final Duration time;
  const PromotionCard({required this.title,required this.price,required this.time,super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: SizedBox(
          height: 220.h,
          width: 360.w,
          child: Stack(children: [
            Positioned(
                child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.h),
                      child: Image.network(
                        "https://wp-pa.phonandroid.com/uploads/2022/12/red-dead-redemption-1.jpg",
                        fit: BoxFit.cover,
                      ),
                    ))),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.h),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  color: Colors.black.withOpacity(0.1),

                ),
              ),
            ),
            Positioned(
                left: 20.w,
                top: 20.h,
                child: SizedBox(
                  width: 90.w,
                  child: AspectRatio(
                    aspectRatio: 9 / 16,
                    child: Image.network(
                        "https://image.jeuxvideo.com/medias-sm/165165/1651652506-3619-jaquette-avant.jpg"),
                  ),
                )),
            Positioned(
              top: 45.h,
              left: 120.w,
              right: 10.w,
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
            ),
            Positioned(
                top: 95.h,
                left: 120.w,
                child: Text(price,
                  style:   Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w600),
                )),
            Positioned(
                top: 120.h,
                left: 120.w,

                child: const Text("88.99\$",
                    style: TextStyle(decoration: TextDecoration.lineThrough)
                )),
            Positioned(
                bottom: 30.h,
                left: 120.w,
                child: Row(
                  children: [
                    Container(
                      height: 40.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.h),
                        color: kDark[500],
                      ),
                      child: Center(
                        child: Text(time.inHours.toString(),
                        style:Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Container(

                      height: 40.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.h),
                        color: kDark[500],
                      ),
                      child: Center(
                        child: Text(time.inHours.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.w600),),
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    Container(
                      height: 40.h,
                      width: 50.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.h),
                        color:kDark[500],
                      ),

                      child: Center(
                        child: Text(time.inHours
                            .toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.w600),
                        ),

                      ),
                    ),
                  ],
                )),
            Positioned(
                bottom: 10.h,
                left: 135.w,
                child: Row(
                  children: [

                    const Text("DYS"),
                    SizedBox(width: 32.w,),
                    const Text("HRS"),
                    SizedBox(width: 32.w,),
                    const Text("MIN"),
                  ],
                )),
            Positioned(
              right: 0,
                bottom: 85.h,
                child: Container(
                  height: 30.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: promoColor,
                    borderRadius: BorderRadius.circular(5.h)
                  ),
                  child: const Center(child: Text("-20%"),),
                ))

          ]),
        ));
  }
}
