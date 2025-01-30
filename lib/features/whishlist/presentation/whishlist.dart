import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../themes/tokens.dart';
import '../../home/presentation/widgets/search_button_field.dart';

enum ViewType { list, grid }

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({Key? key}) : super(key: key);

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  final bool isEmpty = false;
  ViewType _currentView = ViewType.list;

  final List<Map<String, dynamic>> wishlistItems = [
    {
      'image': 'https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg',
      'title': 'Manor Lords (PC) - Steam Key',
      'region': 'GLOBAL',
      'price': 27.81,
      'discount': 48,
    },
    {
      'image': 'https://images.thequint.com/thequint%2F2016-03%2Fbbd5b7b4-8170-4293-aefc-49c35e4007ad%2FUncharted-4.jpg?rect=0%2C0%2C2000%2C1125&auto=format%2Ccompress&fmt=webp&width=720',
      'title': 'Manor Lords (PC) - Steam Key',
      'region': 'GLOBAL',
      'price': 27.81,
      'discount': 48,
    },
    {
      'image': 'https://fifauteam.com/images/covers/fc24/hd/ultimate.png',
      'title': 'Manor Lords (PC) - Steam Key',
      'region': 'GLOBAL',
      'price': 27.81,
      'discount': 48,
    },
    {
      'image': 'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2021/11/forza-horizon-5-sand-dunes-logo.jpg?q=50&fit=contain&w=1140&h=&dpr=1.5',
      'title': 'Manor Lords (PC) - Steam Key',
      'region': 'GLOBAL',
      'price': 27.81,
      'discount': 48,
    },
  ];

  void _toggleView() {
    setState(() {
      _currentView = _currentView == ViewType.list ? ViewType.grid : ViewType.list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Row(
              children: [
                const Expanded(child: SearchButton()),
                SizedBox(width: 10.w),
                Container(
                  height: 50.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.h),
                    color: kDark[700],
                    border: Border.all(color: Colors.grey[800]!, width: 0.5),
                  ),
                  child: const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.h),
          Padding(
            padding: EdgeInsetsDirectional.only(start: 135.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Wishlist',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 100.w),
                Icon(Icons.more_vert, color: Colors.grey[400]),
              ],
            ),
          ),
          SizedBox(height: 25.h),
          if (!isEmpty) ...[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                children: [
                  Text(
                    '${wishlistItems.length} items',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  const Expanded(
                    child: Divider(
                      thickness: 0.1,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  InkWell(
                    onTap: _toggleView,
                    child: Icon(
                      _currentView == ViewType.list ? Icons.grid_view : Icons.list,
                      color: Colors.white,
                      size: 21.sp,
                    ),
                  ),
                ],
              ),
            ),
          ],
          SizedBox(height: 25.h),
          Expanded(
            child: isEmpty
                ? _buildEmptyState()
                : AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: _currentView == ViewType.list
                  ? _buildWishlistItems()
                  : _buildGridView(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      padding: EdgeInsets.all(16.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.35,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
      ),
      itemCount: wishlistItems.length,
      itemBuilder: (context, index) {
        final item = wishlistItems[index];
        return Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.r),
                    topRight: Radius.circular(8.r),
                  ),
                  child: AspectRatio(
                    aspectRatio: 9/16,
                    child: Image.network(
                      item['image'],
                      height: 120.h,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              item['title'],
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Icon(Icons.more_vert, color: Colors.grey[400], size: 16.sp),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        item['region'],
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          Text(
                            '\$ ${item['price']}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (item['discount'] != null) ...[
                            SizedBox(width: 8.w),
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 4.w,
                                vertical: 2.h,
                              ),
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(4.r),
                              ),
                              child: Text(
                                '-${item['discount']}%',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ),
                          ],
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        children: [
                          _buildButton(
                            icon: Icons.shopping_cart_outlined,
                            onTap: () {},
                          ),
                          SizedBox(width: 5.w),
                          Expanded(
                            child: _buildButton(
                              text: 'Other offers',
                              onTap: () {},
                              isOutlined: true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildEmptyState() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Icon(
          Icons.folder_outlined,
          size: 80.sp,
          color: Colors.white,
        ),
        SizedBox(height: 16.h),
        Text(
          'No items on your wishlist yet',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 8.h),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            'Use the heart icon to save something for later.',
            textAlign: TextAlign.center,
            style: TextStyle(

              color: Colors.grey[400],
              fontSize: 16.sp,
            ),
          ),
        ),
        const Spacer(),

      ],
    );
  }

  Widget _buildWishlistItems() {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      itemCount: wishlistItems.length,
      itemBuilder: (context, index) {
        final item = wishlistItems[index];
        return Container(
          margin: EdgeInsets.only(bottom: 16.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 140.h,
                width: 80.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: AspectRatio(
                    aspectRatio: 9/16,
                    child: Image.network(
                      item['image'],
                      width: 120.w,
                      height: 120.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            item['title'],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Icon(Icons.more_vert, color: Colors.grey[400]),
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      item['region'],
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Text(
                          '\$ ${item['price']}',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10.w,),
                        if (item['discount'] != null) ...[
                          SizedBox(height: 4.h),
                          Container(
                            width: 40.w,
                            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            child: Text(
                              '- ${item['discount']}%',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),

                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        _buildButton(
                          icon: Icons.shopping_cart_outlined,
                          onTap: () {},
                        ),
                        SizedBox(width: 8.w),
                        _buildButton(
                          text: 'Other offers',
                          onTap: () {},
                          isOutlined: true,
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h,)
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildButton({
    IconData? icon,
    String? text,
    required VoidCallback onTap,
    bool isOutlined = false,
  }) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 35.h,
        padding: EdgeInsets.symmetric(
          horizontal: 8.w,
          vertical: 8.h,
        ),
        decoration: BoxDecoration(
          color: isOutlined ? kDark[500] : primaryColor,
          border: isOutlined ? Border.all(color: primaryColor) : null,
          borderRadius: BorderRadius.circular(4.r),
        ),
        child: icon != null
            ? Icon(icon, color: Colors.white, size: 18.sp)
            : Text(
          text!,
          style: TextStyle(
            color: primaryColor,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }

}

