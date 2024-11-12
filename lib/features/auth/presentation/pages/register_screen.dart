import 'package:fitness/config/routes/routes.dart';
import 'package:fitness/core/helper/custom_sized.dart';
import 'package:fitness/core/helper/custom_text_field.dart';
import 'package:fitness/core/helper/extension.dart';
import 'package:fitness/features/auth/presentation/pages/login_screen.dart';
import 'package:fitness/features/auth/presentation/widgets/create_account_text.dart';
import 'package:fitness/features/auth/presentation/widgets/head_widget.dart';
import 'package:fitness/features/auth/presentation/widgets/login_button.dart';
import 'package:fitness/features/auth/presentation/widgets/or_widget.dart';
import 'package:fitness/features/auth/presentation/widgets/sign_with_widget.dart';
import 'package:fitness/features/auth/presentation/widgets/text_above_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            verticalSpace(67),
            const HeadTextWidget(
                text1: "\"Start Your Fitness Journey\"",
                text2:
                    "Sign up for personalized AI workouts and progress tracking."),
            verticalSpace(40),
            const TextAboveTextFieldWidget(
                image: "assets/svg/phone_number.svg", text: "Name"),
            verticalSpace(12),
            CustomTextField(
                controller: TextEditingController(), hint: "Write here"),
            verticalSpace(16),
            const TextAboveTextFieldWidget(
                image: "assets/svg/mail.svg", text: "Email Address"),
            verticalSpace(12),
            CustomTextField(
                controller: TextEditingController(), hint: "Write here"),
            verticalSpace(16),
            const TextAboveTextFieldWidget(
                image: "assets/svg/password.svg", text: "Password"),
            verticalSpace(12),
            CustomTextField(
                controller: TextEditingController(), hint: "Write here"),
            verticalSpace(16),
            const TextAboveTextFieldWidget(
                image: "assets/svg/password.svg", text: "Confirm Password"),
            verticalSpace(12),
            CustomTextField(
                controller: TextEditingController(), hint: "Write here"),
            verticalSpace(40),
            LoginButton(
              onTap: () => context.pushNamed(Routes.verifyEmailOtp),
            ),
            verticalSpace(15),
            const CreateAccountText(
              text: "Already have an account?",
            ),
            verticalSpace(40),
            const OrWidget(),
            verticalSpace(12),
            const SignWithWidget(
              image: "assets/svg/google.svg",
              text: "Continue with Google",
            ),
            verticalSpace(67),
            const AllsafeImage(),
          ],
        ),
      ),
    );
  }
}
