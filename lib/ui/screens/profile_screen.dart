import 'package:ecommerce/ui/screens/otp_verification_screen.dart';
import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/styles.dart';
import '../widgets/common_elevated_button.dart';
import '../widgets/commont_text_field.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 80,
              width: 80,
            ),
            const SizedBox(
              height: 16,
            ),
            Text('Complete Profile', style: titleTextStyle),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: Text(
                'Get started with us with your details',
                style: subTileTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CommonTextField(
                controller: TextEditingController(),
                hintText: 'First Name',
                validator: (String? value) {
                  const Text("Please Enter First Name");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CommonTextField(
                controller: TextEditingController(),
                hintText: 'Last Name',
                validator: (String? value) {
                  const Text("Please Enter last name");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CommonTextField(
                controller: TextEditingController(),
                hintText: 'Mobile',
                textInputType: TextInputType.number,
                validator: (String? value) {
                  const Text("Please Enter mobile");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CommonTextField(
                controller: TextEditingController(),
                hintText: 'City',
                validator: (String? value) {
                  const Text("Please Enter city");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CommonTextField(
                maxLine: 5,
                controller: TextEditingController(),
                hintText: 'Shipping Address',
                validator: (String? value) {
                  const Text("Please Enter Shipping Address");
                },
              ),
            ),
            CommonElevatedButton(
              title: 'NEXT',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
