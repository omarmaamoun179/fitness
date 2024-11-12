import 'package:fitness/config/routes/routes.dart';
import 'package:fitness/config/styles.dart';
import 'package:fitness/core/helper/custom_sized.dart';
import 'package:fitness/core/helper/extension.dart';
import 'package:fitness/core/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          verticalSpace(107),
          Image.asset(
            "assets/images/logo.png",
            width: 135.w,
            height: 120.h,
          ),
          verticalSpace(24),
          Text(
            "Welcome",
            style: Styles.style22W700,
          ),
          verticalSpace(5),
          Text("Welcome to The Track Fit", style: Styles.style10W400),
          verticalSpace(25),
          CustomButton(
            color: Colors.white,
            borderRadius: 20.r,
            padding: EdgeInsets.symmetric(horizontal: 88.5.w, vertical: 12.5.h),
            margin: EdgeInsets.symmetric(horizontal: 66.w),
            widget: Text(
              "اللغة العريبة",
              style: Styles.style18W500,
            ),
          ),
          verticalSpace(16),
          CustomButton(
            onTap: () {
              context.pushNamed(Routes.login);
            },
            color: Colors.white,
            borderRadius: 20.r,
            padding: EdgeInsets.symmetric(horizontal: 88.5.w, vertical: 12.5.h),
            margin: EdgeInsets.symmetric(horizontal: 66.w),
            widget: Text(
              "English",
              style: Styles.style18W500,
            ),
          ),
        ],
      ),
    );
  }
}
