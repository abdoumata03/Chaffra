import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:country_picker/country_picker.dart';

import '../../../../themes/tokens.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({Key? key}) : super(key: key);

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  final Set<String> selectedFilters = {};
  final Set<Country> selectedCountries = {};
  final Set<String> selectedPlatforms = {};
  final Set<String> selectedGenres = {};
  final Set<String> selectedRegions = {};

  bool isCountriesExpanded = false;
  bool isPlatformsExpanded = false;
  bool isGenresExpanded = false;
  bool isRegionsExpanded = false;

  final List<Country> allCountries = [];

  @override
  void initState() {
    super.initState();
    allCountries.addAll(CountryService().getAll());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDark[900],
      appBar: AppBar(
        backgroundColor: kDark[900],
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Filter',
          style: TextStyle(color: Colors.white, fontSize: 18.sp, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h),
          if (selectedFilters.isNotEmpty)
            SizedBox(
              height: 50.h,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                children: selectedFilters.map((filter) => _buildFilterChip(filter)).toList(),
              ),
            ),
          SizedBox(height: 20.h),
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              children: [
                _buildPriceRange(),
                SizedBox(height: 25.h),
                _buildCountriesSection(),
                SizedBox(height: 25.h),
                _buildExpandableSection(
                  title: 'Platform',
                  items: ['Steam', 'Xbox Live', 'GOG.com', 'Origin', 'Binance', 'Ubisoft Connect', 'BitItem', 'Epic Games'],
                  selectedItems: selectedPlatforms,
                  isExpanded: isPlatformsExpanded,
                  onExpansionChanged: (value) => setState(() => isPlatformsExpanded = value),
                ),
                SizedBox(height: 25.h),
                _buildExpandableSection(
                  title: 'Genres',
                  items: ['Single Player', 'Action', 'Multiplayer', 'Adventure', 'Third Person', 'Co-op', 'FPS/TPS', 'RPG'],
                  selectedItems: selectedGenres,
                  isExpanded: isGenresExpanded,
                  onExpansionChanged: (value) => setState(() => isGenresExpanded = value),
                ),
                SizedBox(height: 25.h),
                _buildExpandableSection(
                  title: 'Regions',
                  items: ['Global', 'Europe', 'EMEA', 'Latin America', 'United States', 'Asia', 'Australia', 'New Zealand', 'Middle East', 'North America', 'Rest of the World', 'United Kingdom', 'Turkey', 'Poland', 'Germany', 'Japan'],
                  selectedItems: selectedRegions,
                  isExpanded: isRegionsExpanded,
                  onExpansionChanged: (value) => setState(() => isRegionsExpanded = value),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(16.w),
            decoration: BoxDecoration(
              color: kDark[900],
              border: Border(top: BorderSide(color: Colors.grey[800]!, width: 1)),
            ),
            child: Row(
              children: [
                TextButton(
                  onPressed: _clearAll,
                  child: Text(
                    'Clear all',
                    style: TextStyle(color: Colors.white, fontSize: 14.sp,fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    style: ElevatedButton.styleFrom(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(5.r),
                     ),
                      backgroundColor: primaryColor,
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                    ),
                    child: Text(
                      'Show 3,955 items',
                      style: TextStyle(color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    return Padding(
      padding: EdgeInsets.only(right: 8.w),
      child: Chip(
        label: Text(label, style: TextStyle(color: Colors.white, fontSize: 12.sp)),
        deleteIcon: Icon(Icons.close, size: 16.w),
        onDeleted: () => setState(() {
          selectedFilters.remove(label);
          selectedCountries.removeWhere((country) => country.name == label);
          selectedPlatforms.remove(label);
          selectedGenres.remove(label);
          selectedRegions.remove(label);
        }),
        backgroundColor: kDark[500],
        side: BorderSide(
          width: 0.8.w,
          color: Colors.white.withOpacity(0.1),
        ),
      ),
    );
  }

  Widget _buildPriceRange() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Price(EUR)',
          style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 25.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildTextField('From'),
            SizedBox(width: 5.w),
            Icon(Icons.minimize, color: Colors.white.withOpacity(0.5), size: 25.h),
            SizedBox(width: 5.w),
            _buildTextField('To'),
          ],
        ),
      ],
    );
  }

  Widget _buildTextField(String hintText) {
    return SizedBox(
      height: 60.h,
      width: 110.w,
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          fillColor: kDark[900],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
          ),
        ),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildCountriesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        SizedBox(height: 20.h),
        Text(
          'Show Available Items For',
          style: TextStyle(color: Colors.white, fontSize: 14.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 8.h),
        ...allCountries.take(5).map((country) => _buildCountryListItem(country)),
        if (isCountriesExpanded)
          ...allCountries.skip(5).map((country) => _buildCountryListItem(country)),
        _buildDropdownButton(
          isExpanded: isCountriesExpanded,
          onTap: () => setState(() => isCountriesExpanded = !isCountriesExpanded),
        ),
      ],
    );
  }

  Widget _buildCountryListItem(Country country) {
    final isSelected = selectedCountries.contains(country);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          Container(
            width: 40.w,
            height: 40.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white.withOpacity(0.1)),
            ),
            child: Center(
              child: Text(
                country.flagEmoji,
                style: TextStyle(fontSize: 24.sp),
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Text(
              country.name,
              style: TextStyle(color: Colors.white, fontSize: 14.sp),
            ),
          ),
          Checkbox(
            value: isSelected,
            onChanged: (bool? value) {
              setState(() {
                if (value == true) {
                  selectedCountries.add(country);
                  selectedFilters.add(country.name);
                } else {
                  selectedCountries.remove(country);
                  selectedFilters.remove(country.name);
                }
              });
            },
            checkColor: Colors.white,
            activeColor: primaryColor,
            side: BorderSide(
              color: Colors.white.withOpacity(0.3),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpandableSection({
    required String title,
    required List<String> items,
    required Set<String> selectedItems,
    required bool isExpanded,
    required Function(bool) onExpansionChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 8.h),
        ...items.take(5).map((item) => _buildCheckboxListTile(item, selectedItems)),
        if (isExpanded)
          ...items.skip(5).map((item) => _buildCheckboxListTile(item, selectedItems)),
        _buildDropdownButton(
          isExpanded: isExpanded,
          onTap: () => onExpansionChanged(!isExpanded),
        ),
      ],
    );
  }

  Widget _buildCheckboxListTile(String item, Set<String> selectedItems) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          Expanded(
            child: Text(
              item,
              style: TextStyle(color: Colors.white, fontSize: 14.sp),
            ),
          ),
          Checkbox(
            value: selectedItems.contains(item),
            onChanged: (bool? value) {
              setState(() {
                if (value == true) {
                  selectedItems.add(item);
                  selectedFilters.add(item);
                } else {
                  selectedItems.remove(item);
                  selectedFilters.remove(item);
                }
              });
            },
            checkColor: Colors.white,
            activeColor: primaryColor,
            side: BorderSide(color: Colors.white.withOpacity(0.3)),
          ),
        ],
      ),
    );
  }

  Widget _buildDropdownButton({
    required bool isExpanded,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey[800]!),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
              color: Colors.white.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }

  void _clearAll() {
    setState(() {
      selectedFilters.clear();
      selectedCountries.clear();
      selectedPlatforms.clear();
      selectedGenres.clear();
      selectedRegions.clear();
    });
  }
}

void showFilterSheet(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(
      fullscreenDialog: true,
      builder: (BuildContext context) => const FilterBottomSheet(),
    ),
  );
}

Widget buildFilterButton() {
  return Builder(
    builder: (context) => InkWell(
      onTap: () => showFilterSheet(context),
      child: Icon(
        Icons.dehaze,
        size: 33.h,
      ),
    ),
  );
}

