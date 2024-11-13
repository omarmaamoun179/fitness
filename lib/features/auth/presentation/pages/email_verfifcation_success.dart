import 'package:fitness/core/helper/custom_sized.dart';
import 'package:fitness/features/auth/presentation/pages/login_screen.dart';
import 'package:fitness/features/auth/presentation/widgets/head_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailVerificationSuccessScreen extends StatelessWidget {
  const EmailVerificationSuccessScreen({
    super.key,
    required this.isEmail,
  });

  final bool isEmail;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset(
                width: 100.w,
                height: 100.h,
                "assets/svg/success.svg",
                alignment: Alignment.center,
              ),
            ),
            verticalSpace(28),
            HeadTextWidget(
                text1: isEmail
                    ? "\"Verification Successful!\""
                    : "\"Reset pasword Successful!\"",
                text2:
                    "Your account is now verified. Let’s get started on your fitness journey with your AI trainer!"),
            const Spacer(),
            const AllsafeImage(),
            verticalSpace(28),
          ],
        ),
      ),
    );
  }
}
