import 'package:fitness/config/styles.dart';
import 'package:fitness/core/helper/custom_sized.dart';
import 'package:fitness/core/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignWithWidget extends StatelessWidget {
  const SignWithWidget({super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        color: Colors.white,
        bordercolor: const Color(0xffD4D5D4),
        borderRadius: 8.r,
        width: double.infinity,
        height: 48.h,
        widget: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(image),
            horizontalSpace(8),
            Text(text, style: Styles.style12W500),
          ],
        ));
  }
}
