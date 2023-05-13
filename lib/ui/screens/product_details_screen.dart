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
  List<Color> colors = [
    Color(0xFF000000),
    Color(0xFFC43838),
    Color(0xFF936209),
    Color(0xFF4FA217),
    Color(0xFF10B489),
    Color(0xFF801377)
  ];

  List<String> sizes = [
    'S',
    'L',
    'XL',
    'XXL',
    'XXXL',
  ];

  Color _selectedColor = Color(0xFF000000);
  String _selectedSize = 'L';

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
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    const ProductStepper(),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Colors',
                  style: TextStyle(
                      fontSize: 20,
                      color: greyColor,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: colors.map((color) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () {
                          if (_selectedColor != color) {
                            _selectedColor = color;
                            if (mounted) {
                              setState(() {});
                            }
                          }
                        },
                        child: CircleAvatar(
                          backgroundColor: color,
                          radius: 16,
                          child: Visibility(
                              visible: color == _selectedColor,
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                              )),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Size',
                  style: TextStyle(
                      fontSize: 20,
                      color: greyColor,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: sizes.map((size) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(12),
                        onTap: () {
                          if (_selectedSize != size) {
                            _selectedSize = size;
                            if (mounted) {
                              setState(() {});
                            }
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(color: greyColor),
                              color:
                                  size == _selectedSize ? primaryColor : null),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              size,
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: size == _selectedSize
                                      ? Colors.white
                                      : null),
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Description',
                  style: TextStyle(
                      fontSize: 20,
                      color: greyColor,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
