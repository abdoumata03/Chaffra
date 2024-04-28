import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingItem extends StatelessWidget {
  const SettingItem(
      {super.key,
      this.internal = true,
      required this.icon,
      required this.title,
      this.onTap,
      this.value});

  final bool internal;
  final IconData icon;
  final String title;
  final String? value;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 10.w),
          child: Row(
            children: [
              Icon(icon),
              SizedBox(width: 10.w),
              Text(title),
              if (value != null)
                Row(
                  children: [
                    SizedBox(
                      width: 5.w,
                    ),
                    Container(
                      width: 3.w,
                      height: 3.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    if (value != null)
                      Text(
                        value!,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                  ],
                ),
              const Spacer(),
              internal
                  ? const Icon(FluentIcons.chevron_right_20_regular)
                  : const Icon(FluentIcons.expand_up_right_20_regular)
            ],
          ),
        ),
      ),
    );
  }
}
