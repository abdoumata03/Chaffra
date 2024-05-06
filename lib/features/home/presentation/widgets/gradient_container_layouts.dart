import 'dart:ui';
import 'package:chaffra/themes/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class GradientCard extends StatelessWidget {
  const GradientCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w),
      child: Stack(
        children: [
          Container(
            width: 360.w,
            height: 400.h,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(10.h),
              gradient: const LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                stops: [
                  0.1,
                  0.7,
                  1
                ],
                colors: [
                  Colors.blueGrey,
                  Colors.black,
                  kDark
                ],
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.h),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.h),
                    color: Colors.black12.withOpacity(0.2),
                  ),

                ),
              ),
            ),
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.w,vertical: 60.h),
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children:  [
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 2.4.h,
                  child: AspectRatio(
                      aspectRatio: 9/16,
                      child: Image.network( 'https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg',fit: BoxFit.cover,))
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1.2.h,
                  child: AspectRatio(
                      aspectRatio: 4/3,
                      child: Image.network( 'https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg',fit: BoxFit.cover))
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 2,
                  mainAxisCellCount: 1.2.h,
                  child: AspectRatio(
                      aspectRatio: 4/3,
                      child: Image.network( 'https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg',fit: BoxFit.cover))
                ),
                StaggeredGridTile.count(
                  crossAxisCellCount: 4,
                  mainAxisCellCount: 1.5.h,
                  child: AspectRatio(
                      aspectRatio: 4/3,
                      child: Image.network( 'https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg',fit: BoxFit.cover))
                ),


              ],
            ),
          ),
          Positioned(
              top: 10.h,
              left: 100.w,
              child: Text("Chaffra LOGO",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w900
          ),
          ))


        ],
      ),
    );
  }
}
