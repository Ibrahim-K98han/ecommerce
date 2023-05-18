import 'package:ecommerce/ui/screens/home_screen.dart';
import 'package:ecommerce/ui/state_management/user_auth_controller.dart';
import 'package:ecommerce/ui/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../utils/styles.dart';
import '../widgets/common_elevated_button.dart';
import '../widgets/commont_text_field.dart';
import 'complete_profile_screen.dart';

class OTPVerificationScreen extends StatefulWidget {
  final String email;

  OTPVerificationScreen({Key? key, required this.email}) : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final TextEditingController _otpETController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<UserAuthController>(builder: (userAuthController) {
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
              const SizedBox(
                height: 16,
              ),
              Text('Enter OTP Code', style: titleTextStyle),
              const SizedBox(
                height: 4,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  'A 4 digit OTP code has been sent',
                  style: subTileTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: PinCodeTextField(
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  keyboardType: TextInputType.number,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  controller: _otpETController,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(8),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                      selectedFillColor: Colors.white,
                      selectedColor: Colors.green,
                      activeColor: primaryColor,
                      inactiveColor: primaryColor,
                      inactiveFillColor: Colors.white),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (v) {},
                  onChanged: (value) {},
                  appContext: context,
                ),
              ),
              userAuthController.otpVerificationInProgress
                  ? const CircularProgressIndicator()
                  : SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          final bool response =
                              await userAuthController.otpVerification(
                                  widget.email, _otpETController.text);
                          if (response) {
                            Get.offAll(const HomeScreen());
                          } else {
                            Get.showSnackbar(
                              const GetSnackBar(
                                title: 'OTP Verification Failed',
                                message: 'Check Your OTP and try again',
                                duration: Duration(seconds: 3),
                              ),
                            );
                          }
                        },
                        child: const Text('Next'),
                      ),
                    ),
              const SizedBox(
                height: 16,
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 13, color: softGreyColor),
                  text: 'This code will be expire in',
                  children: [
                    TextSpan(
                        style: TextStyle(
                            color: primaryColor, fontWeight: FontWeight.w600),
                        text: '120s'),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Resend Code',
                  style: TextStyle(
                    color: greyColor.withOpacity(0.6),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
