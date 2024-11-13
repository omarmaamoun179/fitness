import 'package:fitness/config/routes/routes.dart';
import 'package:fitness/core/helper/custom_sized.dart';
import 'package:fitness/core/helper/extension.dart';
import 'package:fitness/features/auth/presentation/widgets/login_button.dart';
import 'package:fitness/features/requirement/presentation/widgets/custome_slider.dart';
import 'package:fitness/features/requirement/presentation/widgets/male_or_female_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SetGenderScreen extends StatelessWidget {
  const SetGenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            verticalSpace(67),
            CustomSlider(
              currentStep: 1,
              text1: "\"Personalize Your Training\"",
              text2: "Select your gender to help us tailor your workouts.",
            ),
            verticalSpace(40),
            const Align(
                alignment: Alignment.center,
                child: MaleOrFemaleWidget(
                  image: "assets/svg/male_vector.svg",
                  text: "Male",
                )),
            verticalSpace(16),
            const Align(
              alignment: Alignment.center,
              child: MaleOrFemaleWidget(
                image: "assets/svg/female_vector.svg",
                text: "Female",
              ),
            ),
            verticalSpace(33),
            LoginButton(
              onTap: () {
                context.pushNamed(Routes.setBirthDate);
              },
              text: "Next",
            ),
          ],
        ),
      ),
    );
  }
}
