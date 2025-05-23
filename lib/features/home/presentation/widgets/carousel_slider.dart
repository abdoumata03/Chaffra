import 'package:carousel_slider/carousel_slider.dart' as carousel;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../themes/tokens.dart';

class SliderCarousel extends StatefulWidget {
  final carousel.CarouselSliderController controller;
  final List<String> image;

  const SliderCarousel({required this.controller, required this.image, super.key});

  @override
  State<SliderCarousel> createState() => _SliderCarouselState();
}

class _SliderCarouselState extends State<SliderCarousel> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Container(
          color: kDark[900],
          height: 550.h,
          width: 400.w,
          child: carousel.CarouselSlider.builder(
            carouselController: widget.controller,
            itemCount: widget.image.length,
            itemBuilder: (context, index, realIndex) {
              final urlImage = widget.image[index];
              return buildImage(urlImage, index == widget.image.length - 1);
            },
            options: carousel.CarouselOptions(
              padEnds: false,
              viewportFraction: 0.85,
              height: 520.h,

              autoPlay: true,
              enableInfiniteScroll: false,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 500),
              enlargeCenterPage: false,
              onPageChanged: (index, reason) => setState(() => activeIndex = index),
            ),
          ),
        ),
        Container(
            height: 40.h,
            width: double.infinity,
            color: kDark[900],
            child: Center(child: buildIndicator())),

      ]),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
    onDotClicked: animateToSlide,
    effect: ExpandingDotsEffect(
        dotWidth: 15.w, dotHeight: 4.h, activeDotColor: Colors.white),
    activeIndex: activeIndex,
    count: widget.image.length,
  );

  void animateToSlide(int index) => widget.controller.animateToPage(index);
}

Widget buildImage(String urlImage, bool isLast) {
  return Padding(
    padding: EdgeInsetsDirectional.only(
      start: 15.w
    ),
    child: Stack(
      children: [
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                kDark[900]!,
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0, 0.5],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: NetworkImage(urlImage),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 20.h,
          right: 25.w,
          child: InkWell(
            child: Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2.w),
                color: kDark[900],
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30.h,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 290.h,
          left: 20.w,
          child: Text(
            "Access Anticipé",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 14.sp,
            ),
          ),
        ),
        Positioned(
          top: 330.h,
          left: 20.w,
          right: 20.w,
          child: Text(
            "Commbatez au dela des Enfers dans cente Suite enscorcelante du célèbre dungeon crawler rogue-like primé .",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 17.sp,
            ),
            maxLines: 4,
          ),
        ),
        Positioned(
          bottom: 25.h,
          left: 20.w,
          right: 20.w,
          child: Text(
            "14.50 \$US",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 17.sp,
            ),
            maxLines: 4,
          ),
        ),
      ],
    ),
  );
}
