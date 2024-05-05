
import 'package:chaffra/localization/app_localizations_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../home/presentation/widgets/search_button_field.dart';
class SearchField extends StatefulWidget {

  const SearchField({super.key});

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360.w,
      height: 200.h,
      child: Stack(
        children: [
          AnimatedPositioned(
            top: selected? 50.h:0.h,
            duration: const Duration(milliseconds: 700),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
                onTap: (){
                  setState(() {
                    selected=!selected;
                  });

                },
                child: selected ?
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.w),
                  child: const SearchButton(),
                )
                    :SizedBox(
                  height: 200.h,
                  width: 360.w,
                  child: Column(
                    children: [
                      TextField(
                        autofocus: true,
                        cursorColor:Colors.white,
                        cursorHeight: 20.h,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor:Colors.grey,
                          hintText: context.loc.search,
                          hintStyle: TextStyle(
                              fontSize: 15.sp
                          ),
                          prefixIcon:  InkWell(
                            onTap: (){
                              setState(() {
                                selected=!selected;
                              });
                            },
                            child: Icon(Icons.arrow_back_ios, size: 20.h,color: Colors.white,),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 10.w),
                        child: Container(
                          height: 30.h,
                          width: 335.w,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(25.h),
                              border: Border.all(color: Colors.grey,width: 0.9.w)
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.filter_list_sharp,color: Colors.white,size: 19.h,),
                              const Text("Filters"),
                            ],
                          ),),
                        ),
                      )
                    ],
                  ),
                )

            ),
          ),


        ],
      ),
    );
  }
}
