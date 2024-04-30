import 'package:chaffra/features/home/presentation/widgets/carousel_slider.dart';
import 'package:chaffra/features/home/presentation/widgets/category_button.dart';
import 'package:chaffra/localization/app_localizations_context.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../themes/tokens.dart';
import 'widgets/categories_gridview.dart';


class SliderP extends StatefulWidget {
  const SliderP({super.key});

  @override
  State<SliderP> createState() => _SliderPState();
}

class _SliderPState extends State<SliderP> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'https://images.thequint.com/thequint%2F2016-03%2Fbbd5b7b4-8170-4293-aefc-49c35e4007ad%2FUncharted-4.jpg?rect=0%2C0%2C2000%2C1125&auto=format%2Ccompress&fmt=webp&width=720',
    'https://cdn.realsport101.com/images/ncavvykf/realsport-production/1d1acb453f43f934c3ca3232ae7a92d4758139de-1920x1080.jpg?rect=0,36,1920,1008&w=1200&h=630&auto=format',
    'https://fifauteam.com/images/covers/fc24/hd/ultimate.png',
    'https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg',
    'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2021/11/forza-horizon-5-sand-dunes-logo.jpg?q=50&fit=contain&w=1140&h=&dpr=1.5',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:
         Scaffold(
             body:
         SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [

             SliderCarousel(
                 controller: controller, image: urlImages),
             SizedBox(height: 20.h,),
             CategoryButton(title: context.loc.categories),
             const SizedBox(
                 height: 150,
                 child: CategoryGrid()),
             SizedBox(height: 15.h,),
             Padding(padding: EdgeInsets.only(left: 15.w),
             child: Text(context.loc.deals,
               style: TextStyle(
                   fontSize: 15.sp,
                   fontWeight: FontWeight.w700),
             )),
             //Here THE DEALS Cards //////////////////////////
             SizedBox(height: 15.h,),
             CategoryButton(title: context.loc.bestsellers),
             SizedBox(height: 15.h,),
             Container(
               height: 180.h,
               width: 270.w,
               decoration: BoxDecoration(
                 color: kDark[700]
               ),
               child: Row(
                 children: [
                   AspectRatio(

                     aspectRatio: 9/16,
                     child: Image.network("https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg",
                         fit: BoxFit.cover,
                     ),
                   ),
                   SizedBox(width: 9.w,),

                   Expanded(
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(height: 10.h,),
                         Text("This is an example for over flowe ",
                           overflow: TextOverflow.ellipsis,
                           maxLines: 2,
                           style: TextStyle(
                             fontSize: 12.sp,
                             fontWeight: FontWeight.w600

                           ),),
                         SizedBox(height: 10.h,),
                         Text('From'),
                         SizedBox(height: 10.h,),
                         Text('88.99\$'),


                       ],
                     ),
                   )

                 ],
               ),
             ),

             SizedBox(height: 30.h,)
           ],
         ),



         )),


    );
  }
}


