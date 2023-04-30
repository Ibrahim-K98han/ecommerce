import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/styles.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({Key? key}) : super(key: key);

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 80,
              width: 80,
            ),
            SizedBox(
              height: 16,
            ),
            Text('Welcome Back', style: titleTextStyle),
            SizedBox(
              height: 4,
            ),
            Text(
              'Please Enter Your Email Address',
              style: subTileTextStyle,
            ),
            CommonTextField(
              controller: TextEditingController(),
            )
          ],
        ),
      ),
    );
  }
}

class CommonTextField extends StatelessWidget {
   CommonTextField({
    Key? key, required this.controller,
  }) : super(key: key);

  final TextEditingController controller;
  final Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value){

      },
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 2),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 2),
        ),
      ),
    );
  }
}
