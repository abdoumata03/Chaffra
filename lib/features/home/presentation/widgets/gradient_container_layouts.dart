import 'dart:ui';
import 'package:chaffra/localization/app_localizations_context.dart';
import 'package:chaffra/themes/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GradientCard extends StatelessWidget {
  const GradientCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 360.w,
          height: 550.h,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [0.1, 0.7, 1],
              colors: [Colors.blueGrey, Colors.black, kDark],
            ),
          ),
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(0.2),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 5.h,
          left: 28.w,
          child: SizedBox(
            height: 400.h,
            width: 300.w,
            child: StaggeredGrid.count(
              crossAxisCount: 4,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: [
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 2.4.h,
                    child: AspectRatio(
                        aspectRatio: 9 / 16,
                        child: Image.network(
                          'https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg',
                          fit: BoxFit.cover,
                        ))),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1.2.h,
                    child: AspectRatio(
                        aspectRatio: 4 / 3,
                        child: Image.network(
                            'https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg',
                            fit: BoxFit.cover))),
                StaggeredGridTile.count(
                    crossAxisCellCount: 2,
                    mainAxisCellCount: 1.2.h,
                    child: AspectRatio(
                        aspectRatio: 4 / 3,
                        child: Image.network(
                            'https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg',
                            fit: BoxFit.cover))),
                StaggeredGridTile.count(
                    crossAxisCellCount: 4,
                    mainAxisCellCount: 1.5.h,
                    child: AspectRatio(
                        aspectRatio: 4 / 3,
                        child: Image.network(
                            'https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg',
                            fit: BoxFit.cover))),
              ],
            ),
          ),
        ),
        Positioned(
            top: 10.h,
            left: 100.w,
            child: Image.asset("assets/illustrations/website logo dark.png",
            height: 50.h,
            )),
        Positioned(
            left: 20.w,
            bottom: 15.h,
            child: Container(
          height: 45.h,
          width: 320.w,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.5),
            borderRadius: BorderRadius.circular(20.h)
          ),
              child: Center(child: Text(context.loc.exploremore,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 15.sp
              ),
              ),),
        ),
        ),
        Padding(
          padding:  EdgeInsetsDirectional.only(start: 20.w,end: 20.w,top: 70.h),
          child: Text(context.loc.exploredesc,
            maxLines: 2,
            style: TextStyle(
            fontSize: 13.sp,
            fontWeight: FontWeight.w600
          ),
          ),
        )
      ],
    );
  }
}

