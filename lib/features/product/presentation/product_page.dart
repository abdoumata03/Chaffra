import 'package:autoscale_tabbarview/autoscale_tabbarview.dart';
import 'package:chaffra/features/home/presentation/widgets/special_deal_container.dart';
import 'package:chaffra/features/product/domain/model/marketplace_offer.dart';
import 'package:chaffra/features/product/domain/model/product.dart';
import 'package:chaffra/localization/hardcoded_string.dart';
import 'package:chaffra/shared/widgets/button.dart';
import 'package:chaffra/themes/tokens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, String? id});

  @override
  Widget build(BuildContext context) {
    const fifa22 = Product(
      title: 'FIFA 22 - Steam Key - Global',
      platform: 'Steam',
      platformIconUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Steam_icon_logo.svg/2048px-Steam_icon_logo.svg.png',
      activationCountry: 'Algeria',
      region: 'Global',
      device: 'PC',
      type: 'Digital Key',
      price: 49.99,
      trailerUrl:
          'https://www.youtube.com/watch?v=o1igaMv46SY', // Example trailer URL
      mediaUrls: [
        'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1506830/capsule_616x353.jpg?t=1712678728',
        'https://shared.akamai.steamstatic.com/store_item_assets/steam/apps/1506830/capsule_616x353.jpg?t=1712678728'
      ], // Example thumbnail URLs
      tags: ['Sports', 'Football', 'Multiplayer', 'Simulation'],
      productDescription:
          'FIFA 22 brings the game even closer to the real thing with fundamental gameplay advances and a new season of innovation across every mode.',
      minimumRequirements: SystemRequirements(
        os: 'Windows 10',
        cpu: 'Intel Core i3-6100 @ 3.7GHz or AMD Athlon X4 880K @ 4GHz',
        gpu: 'NVIDIA GTX 660 or AMD Radeon HD 7850',
        ram: 8,
        storage: 50,
      ),
      recommendedRequirements: SystemRequirements(
        os: 'Windows 10',
        cpu: 'Intel i5-3550 @ 3.40GHz or AMD FX 8150 @ 3.6GHz',
        gpu: 'NVIDIA GeForce GTX 670 or AMD Radeon R9 270X',
        ram: 8,
        storage: 50,
      ),
      ageClassifications: [
        'PEGI 3',
        'ESRB E'
      ], // Example age classification icons
    );
    var verticalDivider = VerticalDivider(
      color: Colors.grey.withOpacity(0.3),
      thickness: 1,
      indent: 15,
      endIndent: 15,
      width: 1,
    );
    final marketplaceOffers = [
      const MarketplaceOffer(
        storeName: 'Steam',
        ratingPercentage: 95.0,
        price: 44.99,
        tag: 'Selected',
        sales: 254,
      ),
      const MarketplaceOffer(
        storeName: 'Epic Games',
        ratingPercentage: 92.0,
        price: 39.99,
        tag: 'Cheapest',
        sales: 120,
      ),
      const MarketplaceOffer(
        storeName: 'Origin',
        ratingPercentage: 90.0,
        price: 49.99,
        sales: 80,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 190.h,
                          width: 130.w,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5.h),
                              topRight: Radius.circular(5.h),
                            ),
                            child: AspectRatio(
                              aspectRatio: 9 / 16,
                              child: Image.network(
                                "https://fifauteam.com/images/covers/fc24/hd/ultimate.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Flexible(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                fifa22.title,
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 18),
                              // Platform
                              Row(
                                children: [
                                  Image.network(
                                    fifa22.platformIconUrl,
                                    width: 25.h,
                                    height: 25.h,
                                  ),
                                  SizedBox(width: 12.w),
                                  Text(
                                    fifa22.platform,
                                    style: TextStyle(fontSize: 16.sp),
                                  ),
                                  SizedBox(width: 12.w),
                                  Icon(Icons.info, size: 12.h),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 25.h),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InfoRowItem(
                            title: 'Activation in',
                            icon: Icon(Icons.lock, size: 28.h),
                            value: fifa22.activationCountry,
                          ),
                          verticalDivider,
                          InfoRowItem(
                            title: 'Region',
                            icon: Icon(Icons.language, size: 28.h),
                            value: fifa22.region,
                          ),
                          verticalDivider,
                          InfoRowItem(
                            title: 'Device',
                            icon: Icon(Icons.devices, size: 28.h),
                            value: fifa22.device,
                          ),
                          verticalDivider,
                          InfoRowItem(
                            title: 'Category',
                            icon: Icon(Icons.key, size: 28.h),
                            value: fifa22.type,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Row(
                      children: [
                        Expanded(
                          child: Button(
                            onPressed: () {},
                            child: Text('Get for \$${fifa22.price}'.hardcoded),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Button(
                          onPressed: () {},
                          child: const Icon(Icons.add_shopping_cart),
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Text(
                      'This item works only on the dedicated platform. for more details read the activation page'
                          .hardcoded,
                      style: TextStyle(fontSize: 8.sp),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10.h),
                    const Divider(),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
              SizedBox(
                height: 100.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: fifa22.mediaUrls!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: index == 0 ? 25 : 5,
                          right:
                              index == fifa22.mediaUrls!.length - 1 ? 10 : 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.h),
                        child: Image.network(
                          fifa22.mediaUrls![index],
                          fit: BoxFit.cover,
                          width: 180.w,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 4.w,
                      runSpacing: 4.h,
                      children: fifa22.tags!
                          .map((tag) => Chip(
                                label: Text(tag),
                                labelStyle: TextStyle(fontSize: 10.sp),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ))
                          .toList(),
                    ),
                    SizedBox(height: 10.h),
                    const Divider(),
                    SizedBox(height: 10.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 15.h),
                      decoration: BoxDecoration(
                        color: kDark[700],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: marketplaceOffers.length,
                        separatorBuilder: (context, index) => Divider(
                          thickness: 1,
                          color: Colors.grey.withOpacity(0.2),
                        ),
                        itemBuilder: (context, index) {
                          final offer = marketplaceOffers[index];

                          return Padding(
                            padding: EdgeInsets.only(bottom: 10.h),
                            child: Row(
                              children: [
                                offer.storeIconUrl == null
                                    ? CircleAvatar(
                                        backgroundColor:
                                            Colors.grey.withOpacity(0.1),
                                        child: const Icon(
                                          Icons.storefront,
                                          color: Colors.grey,
                                        ))
                                    : Image.network(
                                        'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/Steam_icon_logo.svg/2048px-Steam_icon_logo.svg.png',
                                        width: 30.h,
                                        height: 30.h,
                                      ),
                                SizedBox(width: 10.w),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      offer.storeName,
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                    IntrinsicHeight(
                                      child: Row(
                                        children: [
                                          Icon(Icons.thumb_up_alt_outlined,
                                              size: 12.h, color: Colors.grey),
                                          const SizedBox(width: 5),
                                          Text(
                                            '${offer.ratingPercentage}%',
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Colors.grey),
                                          ),
                                          const SizedBox(width: 5),
                                          const VerticalDivider(
                                            color: Colors.grey,
                                            thickness: 1,
                                            width: 1,
                                            indent: 5,
                                            endIndent: 5,
                                          ),
                                          const SizedBox(width: 8),
                                          Icon(
                                              Icons
                                                  .shopping_cart_checkout_outlined,
                                              size: 12.h,
                                              color: Colors.grey),
                                          const SizedBox(width: 5),
                                          Text(
                                            '${offer.sales}',
                                            style: TextStyle(
                                                fontSize: 10.sp,
                                                color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      '\$${offer.price}',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    offer.tag != null
                                        ? Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5.w),
                                            decoration: BoxDecoration(
                                              color: offer.tag!.toLowerCase() ==
                                                      'selected'
                                                  ? Colors.green
                                                      .withOpacity(0.1)
                                                  : Colors.orange[300]!
                                                      .withOpacity(0.1),
                                              borderRadius:
                                                  BorderRadius.circular(5.h),
                                            ),
                                            child: Text(
                                              offer.tag!,
                                              style: TextStyle(
                                                fontSize: 11.sp,
                                                color:
                                                    offer.tag!.toLowerCase() ==
                                                            'selected'
                                                        ? Colors.green
                                                        : Colors.orange[300],
                                              ),
                                            ),
                                          )
                                        : const SizedBox(),
                                  ],
                                ),
                                const SizedBox(width: 10),
                                Button(
                                  onPressed: () {},
                                  child: const Icon(Icons.add_shopping_cart),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10.h),
                      decoration: BoxDecoration(
                        color: kDark[700],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text("See more offers".hardcoded,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          )),
                    ),
                    SizedBox(height: 10.h),
                    const Divider(),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        Text(
                          'About this product'.hardcoded,
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'More details'.hardcoded,
                            style: const TextStyle(color: primaryColor),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      fifa22.productDescription,
                      style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      padding: EdgeInsets.all(15.h),
                      decoration: BoxDecoration(
                        color: kDark[700],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.privacy_tip_outlined,
                              color: Colors.grey),
                          const SizedBox(width: 15),
                          Flexible(
                            child: Text(
                              'This item is an account not a digital code and it cannot be activated on the platform directly. This is a unique account for one customer only.'
                                  .hardcoded,
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    const Divider(),
                    DefaultTabController(
                      length: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TabBar(
                            tabs: [
                              Tab(
                                text: 'Minimum',
                              ),
                              Tab(
                                text: 'Recommended',
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          AutoScaleTabBarView(
                            children: [
                              SystemRequirementsContainer(
                                  requirements: fifa22.minimumRequirements),
                              SystemRequirementsContainer(
                                  requirements: fifa22.recommendedRequirements),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      'Age classification'.hardcoded,
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Wrap(
                      spacing: 5.w,
                      runSpacing: 5.h,
                      children: fifa22.ageClassifications!
                          .map((ageClassification) => Image.network(
                                'https://yakamedia.cemea.asso.fr/sites/default/files/upload/Pegi%20-%20Age%2018-black.jpg',
                                height: 50.h,
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// System requirement container, each requirement is a row with the icon and the requirement, without using InfoRowItem
class SystemRequirementsContainer extends StatelessWidget {
  const SystemRequirementsContainer({
    super.key,
    required this.requirements,
  });

  final SystemRequirements requirements;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        children: [
          Requirement(
              icon: Icons.devices, title: 'OS', requirement: requirements.os),
          const SizedBox(height: 10),
          Requirement(
              icon: Icons.memory, title: 'CPU', requirement: requirements.cpu),
          const SizedBox(height: 10),
          Requirement(title: 'GPU', requirement: requirements.gpu),
          const SizedBox(height: 10),
          Requirement(
              icon: Icons.memory,
              title: 'RAM',
              requirement: '${requirements.ram} GB'),
          const SizedBox(height: 10),
          Requirement(
              icon: Icons.storage,
              title: 'Storage',
              requirement: '${requirements.storage} GB'),
        ],
      ),
    );
  }
}

class Requirement extends StatelessWidget {
  const Requirement({
    super.key,
    required this.title,
    required this.requirement,
    this.icon,
  });

  final String title;
  final IconData? icon;
  final String requirement;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon ?? Icons.computer, size: 28.h),
        const SizedBox(width: 10),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 12.sp),
              ),
              Text(
                requirement,
                style: TextStyle(fontSize: 12.sp, color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class InfoRowItem extends StatelessWidget {
  const InfoRowItem({
    super.key,
    required this.title,
    required this.icon,
    required this.value,
  });

  final String title;
  final Widget icon;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 10.sp),
        ),
        const SizedBox(height: 5),
        icon,
        const SizedBox(height: 5),
        Text(
          value,
          style: TextStyle(fontSize: 12.sp),
        ),
      ],
    );
  }
}
