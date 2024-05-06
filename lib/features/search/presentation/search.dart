import "package:flutter/material.dart";
import "package:flutter_screenutil/flutter_screenutil.dart";
import "Widgets/blur_gradient.dart";
import "Widgets/search_field.dart";
class Search extends StatefulWidget {
  const Search({super.key});
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BluredGrad(),
          Positioned(
              top: 50.h,
              child: const SearchField())
        ],
      )

    );
  }
}
