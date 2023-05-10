import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:ecommerce/ui/widgets/category_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state_management/bottom_navigation_bar_controller.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        leading: IconButton(
          onPressed: () {
            Get.find<BottomNavigationBarController>().backToHome();
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: greyColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: 30,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
            itemBuilder: (context, index) {
              return CategoryCardWidget(categoryName: 'Dummy');
            }),
      ),
    );
  }
}
