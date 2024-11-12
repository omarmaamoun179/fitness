import 'package:fitness/config/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.widget,
    this.color,
    this.onTap,
    this.width,
    this.height,
    this.bordercolor,
    this.borderRadius,
  });
  final Widget widget;
  final Color? color;
  final Color? bordercolor;
  final void Function()? onTap;
  final double? width;
  final double? height;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? 361.w,
        height: height ?? 44.h,
        decoration: BoxDecoration(
            border: Border.all(
                color: bordercolor ?? AppColors.secondary, width: 1.w),
            borderRadius: BorderRadius.circular(borderRadius ?? 5.r),
            color: color ?? AppColors.secondary),
        child: Center(child: widget),
      ),
    );
  }
}
