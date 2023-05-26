import 'package:ecommerce/ui/screens/review_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../state_management/bottom_navigation_bar_controller.dart';
import '../utils/app_colors.dart';
import '../widgets/common_elevated_button.dart';
import 'create_review_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
        leading: IconButton(
          onPressed: () {
            Get.find<BottomNavigationBarController>().backToHome();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: greyColor,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (BuildContext context, index) {
                return const CartTitleAndBody();
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: primaryColor.withOpacity(0.15),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Total Price',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: softGreyColor
                      ),),
                      Text('\$100000000',style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: primaryColor
                      ),),
                    ],
                  ),
                  SizedBox(
                    width: 120,
                    child: CommonElevatedButton(
                      onTap: (){},
                      title: 'CheckOut',
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CartTitleAndBody extends StatelessWidget {
  const CartTitleAndBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Icon(Icons.person),
            ),
            Text(
              'Ibrahim Khan',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withOpacity(0.6),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8, left: 16, bottom: 32, right: 16),
          child: Text(
            '''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.''',
            textAlign: TextAlign.justify,
            style: TextStyle(
                fontSize: 14,
                color: softGreyColor,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}