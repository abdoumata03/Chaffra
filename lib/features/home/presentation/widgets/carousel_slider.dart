import 'package:carousel_slider/carousel_slider.dart';
import 'package:chaffra/themes/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'search_button_field.dart';

class SliderCarousel extends StatefulWidget {
  final CarouselController controller;
  final List image;

  const SliderCarousel(
      {required this.controller, required this.image, super.key});

  @override
  State<SliderCarousel> createState() => _SliderCarouselState();
}

class _SliderCarouselState extends State<SliderCarousel> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          height: 400,
        ),
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
            height: 400.h,
            width: 400.w,
            child: Container(
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kDark[900]!,
                    Colors.transparent,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: const [0, 0.5],
                ),
              ),
              child: CarouselSlider.builder(
                  carouselController: widget.controller,
                  itemCount: widget.image.length,
                  itemBuilder: (context, index, realIndex) {
                    final urlImage = widget.image[index];
                    return buildImage(urlImage, index);
                  },
                  options: CarouselOptions(
                      viewportFraction: 1,
                      height: 400.h,
                      autoPlay: true,
                      enableInfiniteScroll: false,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 500),
                      enlargeCenterPage: false,
                      onPageChanged: (index, reason) =>
                          setState(() => activeIndex = index))),
            ),
          ),
        ),
        Positioned(bottom: 30.h, child: buildIndicator()),
        Positioned(top: 10.h, right: 21.w, child: const SearchButton()),
        Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              height: 15.h,
              width: 362.w,
              decoration: BoxDecoration(
                  color: kDark[900],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.h),
                      topRight: Radius.circular(10.h))),
            ))
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

Widget buildImage(String urlImage, int index) =>
    SizedBox(width: 420.w, child: Image.network(urlImage, fit: BoxFit.cover));
