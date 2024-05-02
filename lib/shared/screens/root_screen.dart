import 'package:chaffra/features/home/presentation/home.dart';
import 'package:chaffra/localization/app_localizations_context.dart';
import 'package:chaffra/shared/screens/home.dart';
import 'package:chaffra/features/account/presentation/profile.dart';
import 'package:chaffra/shared/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootScreen extends ConsumerWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(pageIndexChangerProvider);
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(
        bottomNavigationBar: const CustomBottomNavigationBar(),
        body: SafeArea(
            child: IndexedStack(
          index: currentIndex,
          children: [
            const HomePage(),
            Center(child: Text(context.loc.searchBottomNavBarItem)),
            Center(child: Text(context.loc.wishlistBottomNavBarItem)),
            Center(child: Text(context.loc.cartBottomNavBarItem)),
            const Profile(),
          ],
        )),
      ),
    );
  }
}
