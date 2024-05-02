import 'package:chaffra/localization/app_localizations_context.dart';import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'container_grid.dart';
class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 2,
      crossAxisCount: 3,
      children: <Widget>[
        GridContainer(title:context.loc.gaming),
        GridContainer(title:context.loc.elearing),
        GridContainer(title:context.loc.action),
        GridContainer(title:context.loc.software),
        GridContainer(title:context.loc.adventure),
    
      ],
    );
  }
}
