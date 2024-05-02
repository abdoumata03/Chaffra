
import 'package:chaffra/localization/app_localizations_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50.h,
        width: 320.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.h),
            color: Colors.white
        ),
        child: Row(children: [
          SizedBox(width: 9.w,),
          const Icon(Icons.search,color: Colors.black,),
          SizedBox(width: 5.w,),
          Text(context.loc.searchBottomNavBarItem,
            style: const TextStyle(
                color: Colors.black
            ),
          )
        ],),
      ),
    );
  }
}
