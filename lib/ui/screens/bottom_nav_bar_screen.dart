import 'package:ecommerce/ui/screens/cart_screen.dart';
import 'package:ecommerce/ui/screens/category_screen.dart';
import 'package:ecommerce/ui/screens/home_screen.dart';
import 'package:ecommerce/ui/screens/wish_list_screen.dart';
import 'package:ecommerce/ui/state_management/bottom_navigation_bar_controller.dart';
import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavBarScreen extends StatelessWidget {
   BottomNavBarScreen({Key? key}) : super(key: key);

  final BottomNavigationBarController _navigationBarController =
      Get.put(BottomNavigationBarController());

  final List<Widget> _screen = const [
    HomeScreen(),
    CategoryScreen(),
    CartScreen(),
    WishListScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomNavigationBarController>(builder: (controller) {
        return _screen[
          controller.selectIndex
        ];
      }),
      bottomNavigationBar:
          GetBuilder<BottomNavigationBarController>(builder: (controller) {
        return BottomNavigationBar(
          onTap: (value) {
            controller.changeIndex(value);
          },
          elevation: 4,
          selectedItemColor: primaryColor,
          unselectedItemColor: softGreyColor,
          currentIndex: controller.selectIndex,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.grid_view,
              ),
              label: 'Category',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_outlined,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
              ),
              label: 'Wishlist',
            ),
          ],
        );
      }),
    );
  }
}
