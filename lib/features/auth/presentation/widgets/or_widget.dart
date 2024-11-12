import 'package:fitness/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 160.w,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffD4D5D4), width: .6.w),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Text("OR", style: Styles.style12W700Grey),
        ),
        Container(
          width: 160.w,
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xffD4D5D4), width: .6.w),
          ),
        ),
      ],
    );
  }
}
