import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DarkContainer extends StatelessWidget {
  const DarkContainer({
    super.key,
    required this.child,
    required this.padding,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: padding,
      decoration: BoxDecoration(
        color: const Color(0xFF262A35),
        borderRadius: BorderRadius.all(Radius.circular(10.h)),
      ),
      child: child,
    );
  }
}
