import 'package:chaffra/features/home/presentation/widgets/bundle_container.dart';
import 'package:chaffra/features/home/presentation/widgets/carousel_slider.dart';
import 'package:chaffra/features/home/presentation/widgets/discover_deal_container.dart';
import 'package:chaffra/features/home/presentation/widgets/promotion_card.dart';
import 'package:chaffra/features/home/presentation/widgets/search_button_field.dart';
import 'package:chaffra/features/home/presentation/widgets/special_deal_container.dart';
import 'package:chaffra/features/home/presentation/widgets/special_deals_gridview.dart';
import 'package:chaffra/features/home/presentation/widgets/title_button.dart';
import 'package:chaffra/features/home/presentation/widgets/list_product.dart';
import 'package:chaffra/features/home/presentation/widgets/list_product_vertical.dart';
import 'package:chaffra/localization/app_localizations_context.dart';
import 'package:chaffra/shared/widgets/dark_container.dart';
import 'package:chaffra/themes/tokens.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/categories_gridview.dart';
import 'widgets/gradient_container_layouts.dart';
import 'widgets/title_componenet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;
  final controller = CarouselSliderController();

  final urlImages = [
    'https://images.thequint.com/thequint%2F2016-03%2Fbbd5b7b4-8170-4293-aefc-49c35e4007ad%2FUncharted-4.jpg?rect=0%2C0%2C2000%2C1125&auto=format%2Ccompress&fmt=webp&width=720',
    'https://cdn.realsport101.com/images/ncavvykf/realsport-production/1d1acb453f43f934c3ca3232ae7a92d4758139de-1920x1080.jpg?rect=0,36,1920,1008&w=1200&h=630&auto=format',
    'https://fifauteam.com/images/covers/fc24/hd/ultimate.png',
    'https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg',
    'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2021/11/forza-horizon-5-sand-dunes-logo.jpg?q=50&fit=contain&w=1140&h=&dpr=1.5',
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      child: Scaffold(

          body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  const Expanded(child: SearchButton()),
                  SizedBox(
                    width: 10.w,
                  ),
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
            SizedBox(
              height: 20.h,
            ),
            SliderCarousel(controller: controller, image: urlImages),
            TitleButton(
              title: context.loc.categories,
            ),
            const CategoryGrid(),
            TitleButton(
              title: context.loc.giftCards,
            ),
            const SpecialDealsGridview(
              children: [
                GiftCardContainer(
                  title: "Steam cards",
                  url: 'assets/images/steam-cards.png',
                ),
                GiftCardContainer(
                  title: "Playstation cards",
                  url: 'assets/images/psn-cards.png',
                ),
                GiftCardContainer(
                  title: "Xbox cards",
                  url: 'assets/images/xbox-cards.png',
                ),
                GiftCardContainer(
                  title: "Nintendo cards",
                  url: 'assets/images/nintendo-cards.png',
                ),
              ],
            ),
            TitleButton(
              title: context.loc.bundle,
            ),
            // const PromotionCard(
            //     title: "Red Dead Redmeption 2 - steamKey -Global",
            //     price: "69.99\$",
            //     time: Duration(hours: 12)),
            const BundleContainer(),
            TitleButton(title: context.loc.bestsellers),
            const ListCard(),
            TitleButton(title: context.loc.newrelease),
            const VerticalList(
                image:
                    "https://static0.gamerantimages.com/wordpress/wp-content/uploads/2021/11/forza-horizon-5-sand-dunes-logo.jpg?q=50&fit=contain&w=1140&h=&dpr=1.5",
                title: "Dead by Light 2023(Steam-Xbox)",
                price: "99\$"),
            TitleButton(
              title: context.loc.specialDeals,
            ),
            const SpecialDealsGridview(
              children: [
                SpecialDealContainer(
                  dealAmount: 5,
                ),
                SpecialDealContainer(
                  dealAmount: 10,
                ),
                SpecialDealContainer(
                  dealAmount: 15,
                ),
                SpecialDealContainer(
                  dealAmount: 20,
                ),
              ],
            ),
            TitleButton(title: context.loc.steam),
            const VerticalList(
                image:
                    "https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg",
                title: "Dead by Light 2023(Steam-Xbox)",
                price: "99\$"),
            TitleButton(title: context.loc.xbox),
            const VerticalList(
                image:
                    "https://fifauteam.com/images/covers/fc24/hd/ultimate.png",
                title: "Dead by Light 2023(Steam-Xbox)",
                price: "99\$"),
            SizedBox(
              height: 20.h,
            ),
            const GradientCard(),
            TitleButton(title: context.loc.preorders),
            const ListCard(),
          ],
        ),
      )),
    );
  }
}
