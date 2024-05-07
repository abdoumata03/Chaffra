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
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.1, 0.7],
          colors: [Colors.blueGrey, kDark],
        ),
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.2),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Column(
                children: [
                  Image.asset(
                    "assets/illustrations/website logo dark.png",
                    height: 50.h,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      context.loc.exploredesc,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
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
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 45.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20.h),
                    ),
                    child: Center(
                      child: Text(
                        context.loc.exploremore,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
