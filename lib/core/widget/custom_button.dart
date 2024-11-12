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
    this.padding,
    this.margin,
    this.linearColor1,
    this.linearColor2,
  });
  final Widget widget;
  final Color? color;
  final Color? bordercolor;
  final void Function()? onTap;
  final double? width;
  final double? height;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? linearColor1;
  final Color? linearColor2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        margin: margin,
        width: width,
        height: height,
        decoration: BoxDecoration(
            gradient: linearColor1 != null && linearColor2 != null
                ? LinearGradient(
                    colors: [linearColor1!, linearColor2!],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
                : null,
            border: Border.all(
                color: bordercolor ?? AppColors.secondary, width: 1.w),
            borderRadius: BorderRadius.circular(borderRadius ?? 5.r),
            color: color ?? AppColors.secondary),
        child: Center(child: widget),
      ),
    );
  }
}
