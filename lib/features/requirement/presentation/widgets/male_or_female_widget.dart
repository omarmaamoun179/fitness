
import 'package:fitness/config/styles.dart';
import 'package:fitness/core/helper/custom_sized.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MaleOrFemaleWidget extends StatelessWidget {
  const MaleOrFemaleWidget(
      {super.key, required this.image, required this.text});

  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.h,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.r)),
      padding: EdgeInsets.symmetric(horizontal: 100.w),
      margin: EdgeInsets.symmetric(horizontal: 50.w),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
          ),
          verticalSpace(8),
          Text(
            text,
            style: Styles.style18W500,
          ),
        ],
      ),
    );
  }
}
