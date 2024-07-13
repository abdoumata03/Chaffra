import 'package:chaffra/localization/app_localizations_context.dart';
import 'package:chaffra/shared/widgets/button.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(FluentIcons.arrow_left_24_regular),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            context.loc.notifications,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Transform.rotate(
                angle: -0.2,
                child: Image.asset(
                  'assets/illustrations/bell.png',
                  height: 160.h,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'No notifications yet!',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              SizedBox(height: 6.h),
              Text(
                'There are no notifications to show right now.',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.6),
                    ),
              ),
              SizedBox(height: 20.h),
              Button(onPressed: () {}, child: Text('Continue shopping'))
            ],
          ),
        ));
  }
}
