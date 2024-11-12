
import 'package:fitness/core/helper/custom_sized.dart';
import 'package:flutter/material.dart';

import '../../../../config/styles.dart';
class HeadTextWidget extends StatelessWidget {
  const HeadTextWidget({
    super.key,
    required this.text1,
    required this.text2,
  });

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text1, style: Styles.style22W700),
        verticalSpace(5),
        Text(textAlign: TextAlign.center, text2, style: Styles.style10W400Grey),
      ],
    );
  }
}
