import 'package:fitness/config/styles.dart';
import 'package:fitness/core/helper/custom_sized.dart';
import 'package:fitness/features/auth/presentation/widgets/head_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpEmailVerificationScreen extends StatelessWidget {
  const OtpEmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var pinTheme = PinTheme(
      borderWidth: .6.w,
      borderRadius: BorderRadius.circular(8.r),
      activeFillColor: Colors.white,
      inactiveFillColor: Colors.white,
      selectedFillColor: Colors.white,
      fieldWidth: 50.w,
    );
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            verticalSpace(67),
            const HeadTextWidget(
                text1: "\"Email Otp verification\"",
                text2: "Enter the code we sent to your phone ."),
            verticalSpace(40),
            Text(
              "Enter the code we sent to you",
              style:
                  Styles.style12W500.copyWith(color: const Color(0xff5E5E5E)),
            ),
            OtpTextField(),
            // PinCodeTextField(
            //   appContext: context,
            //   length: 5,
            //   animationCurve: Curves.easeInOut,
            //   animationDuration: const Duration(milliseconds: 300),
            //   animationType: AnimationType.fade,
            //   controller: TextEditingController(),
            //   cursorColor: Colors.green,
            //   keyboardType: TextInputType.number,
            //   enabled: true,
            //   enableActiveFill: true,

            //   autoFocus: true,
            //   pinTheme: PinTheme(
            //     activeColor: Colors.transparent,
            //     inactiveColor: Colors.transparent,
            //     disabledColor: Colors.transparent,
            //     selectedColor: Colors.transparent,
            //     borderWidth: .6.w,
            //     shape: PinCodeFieldShape.box,
            //     borderRadius: BorderRadius.circular(20.r),
            //     activeFillColor: Colors.white,
            //     inactiveFillColor: Colors.white,
            //     selectedFillColor: Colors.white,

            //     fieldWidth: 50.w,
            //     fieldHeight: 50.h,

            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
