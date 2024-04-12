import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNavigationBar extends ConsumerWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.h),
          topRight: Radius.circular(15.h),
        ),
        color: Colors.grey[800],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildAppBarItem(
            ref: ref,
            index: 0,
            icon: FluentIcons.home_20_regular,
            selectedIcon: FluentIcons.home_20_filled,
            page: 'Home',
          ),
          buildAppBarItem(
            ref: ref,
            index: 1,
            icon: FluentIcons.search_20_regular,
            selectedIcon: FluentIcons.search_20_filled,
            page: 'Search',
          ),
          buildAppBarItem(
            ref: ref,
            index: 2,
            icon: FluentIcons.heart_20_regular,
            selectedIcon: FluentIcons.heart_20_filled,
            page: 'Wishlist',
          ),
          buildAppBarItem(
            ref: ref,
            index: 3,
            icon: FluentIcons.cart_20_regular,
            selectedIcon: FluentIcons.cart_20_filled,
            page: 'Cart',
          ),
          buildAppBarItem(
            ref: ref,
            index: 4,
            icon: FluentIcons.person_20_regular,
            selectedIcon: FluentIcons.person_20_filled,
            page: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget buildAppBarItem(
      {required WidgetRef ref,
      required int index,
      required IconData icon,
      required IconData selectedIcon,
      required String page}) {
    bool isSelected = index == ref.watch(pageIndexChangerProvider);
    return SizedBox(
      width: 70.w,
      child: InkWell(
        overlayColor: MaterialStateProperty.all(Colors.grey[700]),
        borderRadius: BorderRadius.circular(999),
        onTap: () =>
            ref.read(pageIndexChangerProvider.notifier).changePageIndex(index),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 15.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              !isSelected
                  ? Icon(icon)
                  : Icon(selectedIcon, color: Colors.lightBlue)
                      .animate()
                      .scale(
                          end: const Offset(1.1, 1.1),
                          duration: const Duration(milliseconds: 200))
                      .moveY(begin: 0, end: -2),
              Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: Text(
                  page,
                  style: GoogleFonts.dmSans(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: isSelected ? Colors.lightBlue : Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PageIndex extends Notifier<int> {
  @override
  int build() {
    return 0;
  }

  void changePageIndex(int index) {
    state = index;
  }
}

final pageIndexChangerProvider =
    NotifierProvider<PageIndex, int>(PageIndex.new);
