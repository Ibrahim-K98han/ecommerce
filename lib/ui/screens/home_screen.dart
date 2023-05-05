import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/home/app_bar_icon_button.dart';
import '../widgets/home/home_carousel_widget.dart';

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
            TextField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.search,
              onSubmitted: (value) {},
              decoration: InputDecoration(
                hintStyle: const TextStyle(color: softGreyColor),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                fillColor: softGreyColor.withOpacity(0.1),
                filled: true,
                hintText: 'Search',
                prefixIcon: const Icon(
                  Icons.search,
                  color: softGreyColor,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            HomeCarouselWidget(),
          ],
        ),
      ),
    );
  }
}
