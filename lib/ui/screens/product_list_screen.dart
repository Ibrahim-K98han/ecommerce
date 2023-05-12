import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:ecommerce/ui/widgets/product_card_widgets.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
        leading: const BackButton(
          color: greyColor,
        ),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.75
          ),
          itemCount: 50,
          itemBuilder: (context, index){
            return const ProductCard();
          }
      ),
    );
  }
}
