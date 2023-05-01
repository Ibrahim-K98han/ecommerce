import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../utils/styles.dart';
import '../widgets/common_elevated_button.dart';
import '../widgets/commont_text_field.dart';

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
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                'Please Enter Your Email Address',
                style: subTileTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: CommonTextField(
                controller: TextEditingController(),
                hintText: 'Email Address',
                textInputType: TextInputType.emailAddress,
                validator: (String? value) {
                  Text("Please Enter Email");
                },
              ),
            ),
            CommonElevatedButton(
              title: 'NEXt',
              onTap: (){},
            )
          ],
        ),
      ),
    );
  }
}

