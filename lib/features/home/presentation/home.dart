import 'package:chaffra/features/home/presentation/widgets/carousel_slider.dart';
import 'package:chaffra/features/home/presentation/widgets/title_button.dart';
import 'package:chaffra/features/home/presentation/widgets/list_product.dart';
import 'package:chaffra/features/home/presentation/widgets/list_product_vertical.dart';
import 'package:chaffra/localization/app_localizations_context.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/categories_gridview.dart';
import 'widgets/title_componenet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  int activeIndex = 0;
  final controller = CarouselController();
  final urlImages = [
    'https://images.thequint.com/thequint%2F2016-03%2Fbbd5b7b4-8170-4293-aefc-49c35e4007ad%2FUncharted-4.jpg?rect=0%2C0%2C2000%2C1125&auto=format%2Ccompress&fmt=webp&width=720',
    'https://cdn.realsport101.com/images/ncavvykf/realsport-production/1d1acb453f43f934c3ca3232ae7a92d4758139de-1920x1080.jpg?rect=0,36,1920,1008&w=1200&h=630&auto=format',
    'https://fifauteam.com/images/covers/fc24/hd/ultimate.png',
    'https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg',
    'https://static0.gamerantimages.com/wordpress/wp-content/uploads/2021/11/forza-horizon-5-sand-dunes-logo.jpg?q=50&fit=contain&w=1140&h=&dpr=1.5',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SliderCarousel(controller: controller, image: urlImages),

            TitleButton(
              title: context.loc.categories,
            ),
            const SizedBox(height: 150, child: CategoryGrid()),
            TitleDiv(
              title: context.loc.deals,
            ),
            //Here THE DEALS Cards //////////////////////////

            TitleDiv(title: context.loc.bestsellers),

            const ListCard(),

            TitleButton(title: context.loc.newrelease),

            const VerticalList(
                image:
                    "https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg",
                title: "Dead by Light 2023(Steam-Xbox)",
                price: "99\$"),

            //BestSellers ADS Blured card////////////
            TitleButton(title: context.loc.steam),

            const VerticalList(
                image:
                    "https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg",
                title: "Dead by Light 2023(Steam-Xbox)",
                price: "99\$"),

            TitleButton(title: context.loc.xbox),

            const VerticalList(
                image:
                    "https://files.tecnoblog.net/wp-content/uploads/2021/01/dead-by-daylight.jpg",
                title: "Dead by Light 2023(Steam-Xbox)",
                price: "99\$"),

            TitleButton(title: context.loc.preorders),

            const ListCard(),
          ],
        ),
      )),
    );
  }
}
