import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorText extends StatelessWidget {
  const ErrorText({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              textAlign: TextAlign.center,
              message,
              style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
