import 'package:chaffra/shared/widgets/button.dart';
import 'package:chaffra/shared/widgets/dark_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BundleContainer extends StatelessWidget {
  const BundleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const imageUrls = [
      "https://fifauteam.com/images/covers/fc24/hd/ultimate.png",
      "https://fifauteam.com/images/covers/fc24/hd/ultimate.png",
      "https://fifauteam.com/images/covers/fc24/hd/ultimate.png"
    ];

    return DarkContainer(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const HorizontalDivider(),
              const TimeBox(
                time: '09',
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                ':',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 8.w,
              ),
              const TimeBox(
                time: '12',
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                ':',
                style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 8.w,
              ),
              const TimeBox(
                time: '34',
              ),
              const HorizontalDivider(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              imageUrls.length,
              (index) => SizedBox(
                height: 180.h,
                child: AspectRatio(
                  aspectRatio: 9 / 16,
                  child: Image.network(imageUrls[index]),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '\$ 27.81',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Row(
                    children: [
                      const Text(
                        '\$ 86.20',
                        style: TextStyle(
                          color: Colors.grey,
                          decorationColor: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(4.h),
                        ),
                        child: Text(
                          'You save: \$ 58.39',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Button(
                onPressed: () {},
                child: Text(
                  'Add to cart',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class HorizontalDivider extends StatelessWidget {
  const HorizontalDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.h),
        height: 2.h,
        color: Colors.grey.withOpacity(0.2),
      ),
    );
  }
}

class TimeBox extends StatelessWidget {
  const TimeBox({
    super.key,
    required this.time,
  });

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 35.w,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(4.h),
      ),
      child: Center(
        child: Text(
          time,
          style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
