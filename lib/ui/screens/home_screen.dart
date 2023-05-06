import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/home/app_bar_icon_button.dart';
import '../widgets/home/home_carousel_widget.dart';
import '../widgets/home/remarks_title_widget.dart';
import '../widgets/home/search_text_field.dart';

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
              onTapSeeAll: () {},
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryCard(
                    categoryName: 'Computer',
                  ),
                  CategoryCard(
                    categoryName: 'Computer',
                  ),
                  CategoryCard(
                    categoryName: 'Computer',
                  ),
                  CategoryCard(
                    categoryName: 'Computer',
                  ),
                  CategoryCard(
                    categoryName: 'Computer',
                  ),
                  CategoryCard(
                    categoryName: 'Computer',
                  ),
                  CategoryCard(
                    categoryName: 'Computer',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard({
    Key? key,
    required this.categoryName,
  }) : super(key: key);

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8, left: 5, right: 5),
          child: Container(
            decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8)),
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Icon(
                Icons.computer,
                size: 28,
                color: primaryColor,
              ),
            ),
          ),
        ),
        Text(
          categoryName,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: primaryColor,
              letterSpacing: 0.6,
              fontSize: 12),
        ),
      ],
    );
  }
}
