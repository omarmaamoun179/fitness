import 'package:fitness/config/styles.dart';
import 'package:fitness/core/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    this.onTap,
    this.text,
  });
  final void Function()? onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        onTap: onTap,
        borderRadius: 8.r,
        width: double.infinity,
        height: 48.h,
        linearColor1: const Color(0xff4FDB74),
        linearColor2: const Color(0xff13BC95),
        widget: Text(
          text ?? "Register",
          style: Styles.style14W700,
        ));
  }
}
