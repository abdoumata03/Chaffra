import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes/tokens.dart';

class PromotionCard extends StatelessWidget {
  final String title;
  final String price;
  final Duration time;
  const PromotionCard(
      {required this.title,
      required this.price,
      required this.time,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: SizedBox(
          height: 220.h,
          width: 360.w,
          child: Stack(alignment: Alignment.centerLeft, children: [
            // Background Image
            Positioned(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.h),
                  child: Image.network(
                    "https://wp-pa.phonandroid.com/uploads/2022/12/red-dead-redemption-1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            // Background Filter
            ClipRRect(
              borderRadius: BorderRadius.circular(8.h),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  color: Colors.black.withOpacity(0.25),
                ),
              ),
            ),

            Positioned(
              left: 15.w,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 90.w,
                    child: AspectRatio(
                      aspectRatio: 9 / 16,
                      child: Image.network(
                          "https://image.jeuxvideo.com/medias-sm/165165/1651652506-3619-jaquette-avant.jpg"),
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Game Title
                      SizedBox(
                        width: 180.w,
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
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Game Price
                              Text(
                                price,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleLarge!
                                    .copyWith(fontWeight: FontWeight.w600),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              // Game Old Price
                              Row(
                                children: [
                                  const Text(
                                    "88.99\$",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      decoration: TextDecoration.lineThrough,
                                      decorationColor: Colors.grey,
                                      decorationThickness: 2,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Container(
                                    height: 25.h,
                                    width: 40.w,
                                    decoration: BoxDecoration(
                                        color: primaryColor,
                                        borderRadius:
                                            BorderRadius.circular(5.h)),
                                    child: const Center(
                                      child: Text("-20%"),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ));
  }
}
