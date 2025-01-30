  import "package:chaffra/localization/app_localizations_context.dart";
  import "package:flutter/cupertino.dart";
  import "package:flutter/material.dart";
  import "package:flutter_screenutil/flutter_screenutil.dart";
  import "../../../themes/tokens.dart";
  import "../../home/presentation/widgets/search_button_field.dart";
  import "Widgets/filters_bottomsheet.dart";
import "Widgets/gamesgridview.dart";
  import "Widgets/sort_bottomsheet.dart";
import "Widgets/types_list.dart";
  class Search extends StatefulWidget {
    const Search({super.key});
    @override
    State<Search> createState() => _SearchState();
  }

  class _SearchState extends State<Search> {


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Row(
                    children: [
                      const Expanded(child: SearchButton()),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        height: 50.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50.h),
                          color: kDark[700],
                          border: Border.all(color: Colors.grey[800]!, width: 0.5),
                        ),
                        child: const Icon(
                          Icons.person_outline,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.h,),
                const GameFilters(),
                SizedBox(height: 20.h,),

                Padding(padding: EdgeInsetsDirectional.only(start: 12.w,end: 12.w),
                child: Row(
                  children: [
                    Text(context.loc.bestmatch,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp
                    ),
                    ),
                    const Spacer(),
                    buildSortButton(),
                    SizedBox(width: 15.w,),
                    buildFilterButton()

                  ],
                ),

                ),
                SizedBox(height: 20.h,),

              ],
                        ),
            ),
            Expanded(child: GameGrid())
        ]
        ),

      );
    }
  }
