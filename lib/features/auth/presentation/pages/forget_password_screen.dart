import 'package:fitness/config/routes/routes.dart';
import 'package:fitness/core/helper/custom_sized.dart';
import 'package:fitness/core/helper/custom_text_field.dart';
import 'package:fitness/core/helper/extension.dart';
import 'package:fitness/features/auth/presentation/pages/login_screen.dart';
import 'package:fitness/features/auth/presentation/widgets/head_widget.dart';
import 'package:fitness/features/auth/presentation/widgets/login_button.dart';
import 'package:fitness/features/auth/presentation/widgets/text_above_text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.sizeOf(context).height,
          ),
          child: IntrinsicHeight(
            child: Column(
              children: [
                verticalSpace(67),
                const HeadTextWidget(
                  text1: "\"Reset Password?\"",
                  text2: "Enter your email address to reset your password.",
                ),
                verticalSpace(40),
                const TextAboveTextFieldWidget(
                    image: "assets/svg/mail.svg", text: "Email Address"),
                verticalSpace(12),
                CustomTextField(
                    controller: TextEditingController(), hint: "Write here"),
                verticalSpace(40),
                LoginButton(
                  onTap: () {
                    context.pushNamed(Routes.verifyEmailOtp,
                        arguments: "password");
                  },
                  text: "Send",
                ),
                const Spacer(),
                const AllsafeImage(),
                verticalSpace(28),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
