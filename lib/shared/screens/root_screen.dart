import 'package:chaffra/shared/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RootScreen extends ConsumerWidget {
  const RootScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(pageIndexChangerProvider);
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SafeArea(
          child: IndexedStack(
        index: currentIndex,
        children: const [
          Center(child: Placeholder(child: Text('Home'))),
          Center(child: Placeholder(child: Text('Search'))),
          Center(child: Placeholder(child: Text('Favourites'))),
          Center(child: Placeholder(child: Text('Cart'))),
          Center(child: Placeholder(child: Text('Profile')))
        ],
      )),
    );
  }
}

