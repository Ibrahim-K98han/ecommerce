import 'package:ecommerce/ui/state_management/bottom_navigation_bar_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../widgets/category_card_widget.dart';
import '../widgets/home/app_bar_icon_button.dart';
import '../widgets/home/home_carousel_widget.dart';
import '../widgets/home/remarks_title_widget.dart';
import '../widgets/home/search_text_field.dart';
import '../widgets/product_card_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Row(
          children: [
            Image.asset('assets/images/logo_nav.png'),
            const Spacer(),
            AppBarIconButton(
              iconData: Icons.person,
              onTap: () {},
            ),
            AppBarIconButton(
              iconData: Icons.call,
              onTap: () {},
            ),
            AppBarIconButton(
              iconData: Icons.notifications,
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: SearchTextField(),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: HomeCarouselWidget(),
              ),
              RemarkTitleWidget(
                remarkName: 'Categories',
                onTapSeeAll: () {
                  Get.find<BottomNavigationBarController>().changeIndex(1);
                },
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryCardWidget(
                      categoryName: 'Computer',
                    ),
                    CategoryCardWidget(
                      categoryName: 'Electronics',
                    ),
                    CategoryCardWidget(
                      categoryName: 'Cloth',
                    ),
                    CategoryCardWidget(
                      categoryName: 'Computer',
                    ),
                    CategoryCardWidget(
                      categoryName: 'Computer',
                    ),
                    CategoryCardWidget(
                      categoryName: 'Computer',
                    ),
                    CategoryCardWidget(
                      categoryName: 'Computer',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: RemarkTitleWidget(
                  remarkName: 'Popular',
                  onTapSeeAll: () {},
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: RemarkTitleWidget(
                  remarkName: 'Special',
                  onTapSeeAll: () {},
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: RemarkTitleWidget(
                  remarkName: 'New',
                  onTapSeeAll: () {},
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard()
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
