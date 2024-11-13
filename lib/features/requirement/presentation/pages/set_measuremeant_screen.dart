import 'package:fitness/config/styles.dart';
import 'package:fitness/core/helper/custom_sized.dart';
import 'package:fitness/features/auth/presentation/widgets/login_button.dart';
import 'package:fitness/features/requirement/presentation/widgets/custome_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruler_slider/ruler_slider.dart';

class SetMeasurementScreen extends StatefulWidget {
  const SetMeasurementScreen({super.key});

  @override
  _SetMeasurementScreenState createState() => _SetMeasurementScreenState();
}

class _SetMeasurementScreenState extends State<SetMeasurementScreen> {
  double selectedHeight = 175.0;

  double selectedWeight = 70.0;
  // Initial height value

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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                verticalSpace(67),
                CustomSlider(
                  text1: "\"Your Measurements\"",
                  text2: "Enter your weight and height.",
                  currentStep: 3,
                ),
                verticalSpace(40),
                RulerSlider(
                  onChanged: (value) {
                    setState(() {
                      selectedHeight = value;
                    });
                  },
                  initialValue: selectedHeight,
                  maxValue: 250,
                  minValue: 100,
                  labelBuilder: (value) {
                    return "${value.toInt()} cm";
                  },
                  showFixedLabel: true,
                  valueTextStyle: Styles.style18W500,
                  labelTextStyle: Styles.style10W400Grey,
                  rulerHeight: 120.h,
                  fixedBarHeight: 36.h,
                  fixedLabelColor: Colors.black,
                  selectedBarColor: Colors.grey,
                  fixedBarColor: Colors.green,
                  unselectedBarColor: Colors.grey,
                ),
                verticalSpace(33),
                RulerSlider(
                  onChanged: (value) {
                    setState(() {
                      selectedHeight = value;
                    });
                  },
                  initialValue: selectedWeight,
                  maxValue: 200,
                  minValue: 60,
                  labelBuilder: (value) {
                    return "${value.toInt()} k.g";
                  },
                  valueTextStyle: Styles.style18W500,
                  labelTextStyle: Styles.style10W400Grey,
                  rulerHeight: 120.h,
                  fixedBarHeight: 36.h,
                  fixedLabelColor: Colors.black,
                  selectedBarColor: Colors.grey,
                  fixedBarColor: Colors.green,
                  unselectedBarColor: Colors.grey,
                ),
                const Spacer(),
                LoginButton(
                  onTap: () {},
                  text: "Next",
                ),
                verticalSpace(12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
