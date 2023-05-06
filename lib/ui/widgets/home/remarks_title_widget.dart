import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/styles.dart';

class RemarkTitleWidget extends StatelessWidget {
  RemarkTitleWidget({
    Key? key,
    required this.remarkName,
    required this.onTapSeeAll,
  }) : super(key: key);

  final String remarkName;
  final VoidCallback onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          remarkName,
          style: titleTextStyle.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        TextButton(
          onPressed: onTapSeeAll,
          child: const Text(
            'See All',
            style: TextStyle(color: primaryColor),
          ),
        ),
      ],
    );
  }
}