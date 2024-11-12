import 'package:fitness/config/styles.dart';
import 'package:fitness/core/helper/custom_sized.dart';
import 'package:fitness/core/helper/custom_text_field.dart';
import 'package:fitness/features/auth/presentation/widgets/create_account_text.dart';
import 'package:fitness/features/auth/presentation/widgets/head_widget.dart';
import 'package:fitness/features/auth/presentation/widgets/login_button.dart';
import 'package:fitness/features/auth/presentation/widgets/or_widget.dart';
import 'package:fitness/features/auth/presentation/widgets/sign_with_widget.dart';
import 'package:fitness/features/auth/presentation/widgets/text_above_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            verticalSpace(67),
            const Align(
              alignment: Alignment.center,
              child: HeadTextWidget(
                text1: "\"Welcome Back!\"",
                text2:
                    "Log in to continue with your AI trainer and reach your goals.",
              ),
            ),
            verticalSpace(40),
            const TextAboveTextFieldWidget(
                image: "assets/svg/phone_number.svg", text: "Phone Number"),
            verticalSpace(12),
            CustomTextField(
              controller: TextEditingController(),
              hint: "Write here",
            ),
            verticalSpace(16),
            const TextAboveTextFieldWidget(
                image: "assets/svg/password.svg", text: "Password"),
            verticalSpace(12),
            CustomTextField(
              controller: TextEditingController(),
              hint: "Write here",
            ),
            verticalSpace(8),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text("Forget Password?", style: Styles.style12W700),
            ),
            verticalSpace(40),
            const LoginButton(),
            verticalSpace(16),
            const CreateAccountText(),
            verticalSpace(40),
            const OrWidget(),
            verticalSpace(12),
            const SignWithWidget(
              image: "assets/svg/google.svg",
              text: "Continue with Google",
            ),
            verticalSpace(8),
            const SignWithWidget(
              image: "assets/svg/facebook.svg",
              text: "Continue with Facebook",
            ),
            verticalSpace(8),
            const SignWithWidget(
              image: "assets/svg/mail.svg",
              text: "Continue with Email",
            ),
            verticalSpace(116),
            const AllsafeImage()
          ],
        ),
      ),
    );
  }
}

class AllsafeImage extends StatelessWidget {
  const AllsafeImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.center,
      child:
          Image.asset(width: 236.w, height: 15.h, "assets/images/allsafe.png"),
    );
  }
}
