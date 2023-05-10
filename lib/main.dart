import 'package:ecommerce/ui/state_management/bottom_navigation_bar_controller.dart';
import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'ui/screens/splash_screen.dart';

void main() {
  runApp(const CraftyBay());
}

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: GetxBindings(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 1,
          titleTextStyle: TextStyle(
              color: greyColor, fontWeight: FontWeight.w500, fontSize: 18),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            textStyle: const TextStyle(
                fontWeight: FontWeight.w400, letterSpacing: 0.6),
          ),
        ),
      ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.light,
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //       backgroundColor: primaryColor,
      //       textStyle: const TextStyle(
      //           fontWeight: FontWeight.w400, letterSpacing: 0.6),
      //     ),
      //   ),
      // ),
      home: const SplashScreen(),
    );
  }
}

class GetxBindings extends Bindings {
  @override
  void dependencies() {
    Get.put( BottomNavigationBarController());
  }
}
