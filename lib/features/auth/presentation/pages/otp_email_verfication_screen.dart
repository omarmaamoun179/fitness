import 'package:fitness/config/routes/routes.dart';
import 'package:fitness/config/styles.dart';
import 'package:fitness/core/helper/custom_sized.dart';
import 'package:fitness/core/helper/extension.dart';
import 'package:fitness/features/auth/presentation/pages/login_screen.dart';
import 'package:fitness/features/auth/presentation/widgets/create_account_text.dart';
import 'package:fitness/features/auth/presentation/widgets/head_widget.dart';
import 'package:fitness/features/auth/presentation/widgets/login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtpEmailVerificationScreen extends StatelessWidget {
  const OtpEmailVerificationScreen({super.key, required this.emailOrPassword});
  final String emailOrPassword;

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                verticalSpace(67),
                Align(
                  alignment: Alignment.center,
                  child: HeadTextWidget(
                      text1: emailOrPassword == "email"
                          ? "\"Email Otp verification\""
                          : "\"Password Otp verification\"",
                      text2: "Enter the code we sent to your phone ."),
                ),
                verticalSpace(40),
                Text("Enter the code we sent to you",
                    style: Styles.style12W500),
                verticalSpace(12),
                Align(
                  alignment: Alignment.centerLeft,
                  child: OtpTextField(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    enabledBorderColor: Colors.transparent,
                    borderColor: Colors.red,
                    textStyle: Styles.style12W500.copyWith(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xffB1B1B1)),
                    borderWidth: 12.w,
                    focusedBorderColor: Colors.transparent,
                    handleControllers: (controllers) => controllers,
                    numberOfFields: 6,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: const BorderSide(color: Color(0xffD4D5D4)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: const BorderSide(color: Color(0xffD4D5D4)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: const BorderSide(color: Color(0xffD4D5D4)),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    borderRadius: BorderRadius.circular(8.r),
                    autoFocus: true,
                  ),
                ),
                verticalSpace(40),
                LoginButton(
                  onTap: emailOrPassword == "email"
                      ? () => context.pushNamed(Routes.emailVerificationSuccess,
                          arguments: true)
                      : () => context.pushNamed(Routes.resetPassword),
                  text: "Verify",
                ),
                verticalSpace(16),
                const CreateAccountText(
                  text: "Send Again?",
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
