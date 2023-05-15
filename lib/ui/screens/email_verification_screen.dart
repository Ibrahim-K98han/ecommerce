import 'package:ecommerce/ui/screens/otp_verification_screen.dart';
import 'package:ecommerce/ui/state_management/user_auth_controller.dart';
import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
  final TextEditingController _emailETController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<UserAuthController>(builder: (authController) {
        return Padding(
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
                padding: const EdgeInsets.only(bottom: 24),
                child: CommonTextField(
                  controller: _emailETController,
                  hintText: 'Email Address',
                  textInputType: TextInputType.emailAddress,
                  validator: (String? value) {
                    const Text("Please Enter Email");
                  },
                ),
              ),
              authController.emailVerificationInProgress
                  ? CircularProgressIndicator()
                  : CommonElevatedButton(
                      title: 'NEXt',
                      onTap: () async {
                        final bool response = await authController
                            .emailVerification(_emailETController.text);
                        if (response) {
                          Get.to(const OTPVerificationScreen());
                        } else {
                          if (mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text('Email Verification faile, try again'),
                              ),
                            );
                          }
                        }
                      },
                    ),
            ],
          ),
        );
      }),
    );
  }
}
