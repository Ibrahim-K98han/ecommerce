import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/styles.dart';
import '../widgets/common_elevated_button.dart';
import '../widgets/commont_text_field.dart';

class CreateReviewScreen extends StatefulWidget {
  const CreateReviewScreen({Key? key}) : super(key: key);

  @override
  State<CreateReviewScreen> createState() => _CreateReviewScreenState();
}

class _CreateReviewScreenState extends State<CreateReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Review'),
        leading: const BackButton(
          color: greyColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                maxLine: 8,
                controller: TextEditingController(),
                hintText: 'Write Your Review',
                validator: (String? value) {
                  const Text("Write Your Review");
                },
              ),
            ),
            CommonElevatedButton(
              title: 'Submit',
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
