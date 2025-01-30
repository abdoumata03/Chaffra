import 'package:chaffra/themes/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GameFilters extends StatefulWidget {
  const GameFilters({super.key});

  @override
  State<GameFilters> createState() => _GameFiltersState();
}

class _GameFiltersState extends State<GameFilters> {
  final Map<String, List<String>> categoryFilters = {
    'GAMES': ['ALL GAMES', 'KEYS', 'DLC', 'GAME POINTS'],
    'GIFT CARDS': ['ALL GIFT CARDS', 'STEAM', 'XBOX', 'PLAYSTATION'],
    'SOFTWARES': ['ALL SOFTWARES', 'ANTIVIRUS', 'VPN', 'OFFICE'],
    'SUBSCRIPTIONS': ['ALL SUBSCRIPTIONS', 'STREAMING', 'CLOUD', 'GAMING'],
  };

  String selectedCategory = 'GAMES';
  Set<String> selectedFilters = {'ALL GAMES'};

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kDark[900],
      child: Column(
        children: [
          Container(
            color: kDark[900],
            height: 56.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryFilters.keys.length,
              itemBuilder: (context, index) {
                final category = categoryFilters.keys.elementAt(index);
                final isSelected = selectedCategory == category;
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedCategory = category;
                      selectedFilters = {categoryFilters[category]!.first};
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: isSelected ? Colors.white : Colors.transparent,
                          width: 2.w,
                        ),
                      ),
                    ),
                    child: Text(
                      category,
                      style: TextStyle(
                        color: isSelected ? Colors.white :Colors.white.withOpacity(0.5),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Divider(height: 1.h, color: Colors.grey[800]),
          Padding(
            padding:  EdgeInsetsDirectional.only(start: 15.w),
            child: Container(
              height: 56.h,
              color:kDark[900],
              child: ListView(
                clipBehavior: Clip.none,

                scrollDirection: Axis.horizontal,
                children: categoryFilters[selectedCategory]!.map((filter) {
                  final isSelected = selectedFilters.contains(filter);
                  return Padding(
                    padding: EdgeInsets.only(right: 8.w, top: 8.h),
                    child: FilterChip(
                      selected: isSelected,
                      showCheckmark: false,
                      label: Text(
                        filter,
                        style: TextStyle(
                          color: isSelected ? Colors.white : Colors.white70,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                      selectedColor: primaryColor,
                      backgroundColor: kDark[500],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.h),
                      ),
                      side: BorderSide.none,

                      onSelected: (selected) {
                        setState(() {
                          if (filter.startsWith('ALL')) {
                            selectedFilters.clear();
                            if (selected) {
                              selectedFilters.add(filter);
                            }
                          } else {
                            selectedFilters.remove(
                                categoryFilters[selectedCategory]!.first);
                            if (selected) {
                              selectedFilters.add(filter);
                            } else {
                              selectedFilters.remove(filter);
                            }
                            if (selectedFilters.isEmpty) {
                              selectedFilters.add(
                                  categoryFilters[selectedCategory]!.first);
                            }
                          }
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}