import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar_icon_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          )),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}

