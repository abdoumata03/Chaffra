import 'package:chaffra/features/home/presentation/widgets/special_deal_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialDealsGridview extends StatelessWidget {
  const SpecialDealsGridview({
    super.key,
    required this.children,
  });

  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      primary: false,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: 21 / 9,
      children: children,
    );
  }
}
