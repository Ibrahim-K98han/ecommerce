import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:ecommerce/ui/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

import '../widgets/product_details/product_image_carousel.dart';
import '../widgets/product_stepper.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        leading: const BackButton(
          color: greyColor,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProdcutImageCarousel(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Additas Casula Shoe s4657 Brand new',
                            style: titleTextStyle.copyWith(
                              fontSize: 18,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 16,
                                  ),
                                  Text(
                                    '4.5',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: softGreyColor),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Reviews',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: primaryColor),
                                ),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding: EdgeInsets.all(4.0),
                                  child: Icon(
                                    Icons.favorite_border,
                                    size: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const ProductStepper()
                  ],
                ),
                Text('Colors'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
