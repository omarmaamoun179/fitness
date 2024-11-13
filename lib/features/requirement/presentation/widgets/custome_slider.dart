import 'package:fitness/config/styles.dart';
import 'package:fitness/core/helper/custom_sized.dart';
import 'package:fitness/core/helper/extension.dart';
import 'package:fitness/features/auth/presentation/widgets/head_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSlider extends StatefulWidget {
  CustomSlider(
      {super.key,
      required this.text1,
      required this.text2,
      required this.currentStep});

  final String text1;
  final String text2;
  int currentStep;

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  final int totalSteps = 6;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            widget.currentStep == 1
                ? const SizedBox.shrink()
                : GestureDetector(
                    onTap: () {
                      context.pop();
                      setState(() {
                        if (widget.currentStep > 1) widget.currentStep--;
                      });
                    },
                    child: Icon(Icons.arrow_back_ios,
                        color: const Color(0xff7E7E7E), size: 12.sp),
                  ),
            horizontalSpace(12),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: 2.h,
                    color: Colors.white,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff4FDB74),
                        Color(0xff13BC95),
                      ],
                    )),
                    height: 2.h,
                    width: MediaQuery.of(context).size.width *
                        (widget.currentStep / 7),
                  ),
                ],
              ),
            ),
            horizontalSpace(12.w),
            Text('${widget.currentStep.toInt()}/$totalSteps',
                style: Styles.style10W400Grey),
          ],
        ),
        verticalSpace(21),
        HeadTextWidget(text1: widget.text1, text2: widget.text2)
      ],
    );
  }
}
