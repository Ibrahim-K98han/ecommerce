import 'package:ecommerce/ui/screens/bottom_nav_bar_screen.dart';
import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then(
      (value) {
        Get.off(
           BottomNavBarScreen(),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Center(
                  child: Image.asset(
            'assets/images/logo.png',
            width: 100,
          ))),
          Column(
            children: const [
              CircularProgressIndicator(
                color: primaryColor,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'Version 1.0',
                  style: TextStyle(
                      color: greyColor, fontSize: 12, letterSpacing: 0.8),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
