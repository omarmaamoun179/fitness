import 'package:fitness/config/styles.dart';
import 'package:fitness/core/helper/custom_sized.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextAboveTextFieldWidget extends StatelessWidget {
  const TextAboveTextFieldWidget(
      {super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          image,
        ),
        horizontalSpace(8),
        Text(text, style: Styles.style12W500),
      ],
    );
  }
}
