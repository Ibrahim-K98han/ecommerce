import 'package:ecommerce/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/app_colors.dart';

class CategoryCardWidget extends StatelessWidget {
  CategoryCardWidget({
    Key? key,
    required this.categoryName,
  }) : super(key: key);

  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(
          ProductListScreen(),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Column(
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
                  fontWeight: FontWeight.w400,
                  color: primaryColor,
                  letterSpacing: 0.6,
                  fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
