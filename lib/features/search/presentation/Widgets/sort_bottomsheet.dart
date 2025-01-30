import 'package:chaffra/themes/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum SortOption {
  bestMatch,
  releaseDate,
  priceLowest,
  priceHighest,
}

class SortBottomSheet extends StatefulWidget {
  const SortBottomSheet({Key? key}) : super(key: key);

  @override
  State<SortBottomSheet> createState() => _SortBottomSheetState();
}

class _SortBottomSheetState extends State<SortBottomSheet> {
  late SortOption selectedOption;
  late SortOption initialOption;

  @override
  void initState() {
    super.initState();
    initialOption = SortOption.bestMatch;
    selectedOption = initialOption;
  }

  bool get hasChanged => selectedOption != initialOption;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kDark[900],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Padding(
            padding: EdgeInsets.all(16.w),
            child: Row(
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 24.w,
                  ),
                ),
                SizedBox(width: 25.w),
                Text(
                  'Sort',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: Text(
              'SORT BY',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          _buildSortOption(
            title: 'Best match',
            value: SortOption.bestMatch,
          ),
          _buildSortOption(
            title: 'Release date',
            value: SortOption.releaseDate,
          ),
          _buildSortOption(
            title: 'Price - lowest first',
            value: SortOption.priceLowest,
          ),
          _buildSortOption(
            title: 'Price - highest first',
            value: SortOption.priceHighest,
          ),

          const Spacer(),

          Padding(
            padding: EdgeInsets.all(16.w),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context, selectedOption);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: hasChanged ? primaryColor : Colors.transparent,
                padding: EdgeInsets.symmetric(vertical: 16.h),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: hasChanged ?Colors.transparent :Colors.white.withOpacity(0.2),
                    width: 2.w
                  ),
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
              child: Text(
                'UPDATE FILTERS',
                style: TextStyle(
                  color:  hasChanged ? Colors.white:Colors.white.withOpacity(0.4),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSortOption({
    required String title,
    required SortOption value,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedOption = value;
        });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        child: Row(
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                ),
              ),
            ),
            Container(
              width: 24.w,
              height: 24.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: selectedOption == value ? Colors.blue : Colors.white,
                  width: 2,
                ),
              ),
              child: selectedOption == value
                  ? Center(
                child: Container(
                  width: 12.w,
                  height: 12.w,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                ),
              )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}

void showSortOptions(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    builder: (context) => DraggableScrollableSheet(
      initialChildSize: 0.6,
      minChildSize: 0.5,
      maxChildSize: 0.7,
      builder: (_, controller) => const SortBottomSheet(),
    ),
  ).then((selectedOption) {
    if (selectedOption != null) {

      print('Selected sort option: $selectedOption');
    }
  });
}

Widget buildSortButton() {
  return Builder(
    builder: (context) => InkWell(
      onTap: () => showSortOptions(context),
      child: Icon(
        Icons.filter_list_rounded,
        size: 33.h,
      ),
    ),
  );
}

