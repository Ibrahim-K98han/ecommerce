import 'package:flutter/material.dart';

import '../utils/styles.dart';
import '../widgets/common_elevated_button.dart';
import '../widgets/commont_text_field.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
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
            Text('Enter OTP Code', style: titleTextStyle),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding:  EdgeInsets.only(bottom: 16),
              child: Text(
                'A 4 digit OTP code has been send' ,
                style: subTileTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
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
