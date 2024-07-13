import 'package:chaffra/themes/tokens.dart';
import 'package:chaffra/localization/app_localizations_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomBottomNavigationBar extends ConsumerWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Ink(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Colors.grey[600]!,
            width: 0.5,
          ),
        ),
        color: kDark[900],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildAppBarItem(
            ref: ref,
            index: 0,
            icon: Icons.home_outlined,
            selectedIcon: Icons.home,
            page: context.loc.homeBottomNavBarItem,
          ),
          buildAppBarItem(
            ref: ref,
            index: 1,
            icon: Icons.search_outlined,
            selectedIcon: Icons.search,
            page: context.loc.searchBottomNavBarItem,
          ),
          buildAppBarItem(
            ref: ref,
            index: 2,
            icon: Icons.favorite_outline,
            selectedIcon: Icons.favorite,
            page: context.loc.wishlistBottomNavBarItem,
          ),
          buildAppBarItem(
            ref: ref,
            index: 3,
            icon: Icons.shopping_cart_outlined,
            selectedIcon: Icons.shopping_cart,
            page: context.loc.cartBottomNavBarItem,
          ),
          buildAppBarItem(
            ref: ref,
            index: 4,
            icon: Icons.person_outline,
            selectedIcon: Icons.person,
            page: context.loc.profileBottomNavBarItem,
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
        overlayColor: MaterialStateProperty.all(const Color(0xFF2F343C)),
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
                  : Icon(selectedIcon, color: primaryColor)
                      .animate()
                      .scale(
                          end: const Offset(1.1, 1.1),
                          duration: const Duration(milliseconds: 200))
                      .moveY(begin: 0, end: -2),
              Padding(
                padding: EdgeInsets.only(top: 5.h),
                child: Text(
                  page,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w500,
                    color: isSelected ? primaryColor : Colors.white,
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
