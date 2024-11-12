
import 'package:fitness/config/app_colors.dart';
import 'package:fitness/config/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.controller,
      this.label,
      this.prefixIcon,
      this.suffixIcon,
      this.textStyle,
      this.fiiledColor,
      this.borderRadius,
      this.obSecureText,
      this.onPressed,
      this.onFieldSubmitted,
      this.contentPadding,
      this.maxLines,
      this.readOnly,
      this.keyboardType,
      this.textInputAction,
      this.validator,
      this.inputStyle,
      this.fillColor,
      this.borderColor,
      this.height,
      this.width,
      this.hint});

  final TextEditingController controller;
  final String? label;
  final String? hint;

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextStyle? textStyle;
  final bool? fiiledColor;
  final BorderRadius? borderRadius;
  final bool? obSecureText;
  final void Function()? onPressed;
  final void Function(String)? onFieldSubmitted;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLines;
  final bool? readOnly;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final TextStyle? inputStyle;
  final Color? fillColor;
  final Color? borderColor;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onPressed,
      cursorColor: AppColors.secondary,
      style: Styles.style12W400LabelTextField,
      obscuringCharacter: '*',
      autovalidateMode: AutovalidateMode.onUserInteraction,
      keyboardType: keyboardType ?? TextInputType.text,
      textInputAction: textInputAction ?? TextInputAction.done,
      readOnly: readOnly ?? false,
      maxLines: maxLines ?? 1,
      onFieldSubmitted: onFieldSubmitted,
      validator: validator,
      obscureText: obSecureText ?? false,
      controller: controller,
      decoration: InputDecoration(
        // constraints: BoxConstraints(
        //   maxHeight: height ?? 60.h,
        //   maxWidth: width ?? 275.w,
        //   minHeight: height ?? 150.h,
        //   minWidth: width ?? 275.w,
        // ),
        isDense: true,
        focusColor: AppColors.secondary,
        border: outLineInputBorder(),

        contentPadding: EdgeInsets.all(10.w),
        fillColor: Colors.transparent,
        filled: fiiledColor ?? true,
        hintText: hint,
        labelText: label,
        labelStyle: Styles.style12W400LabelTextField,

        // label: Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 9.0.w),
        //   child: Text(lable),
        // ),
        hintStyle: Styles.style12W400LabelTextField,
        prefixIcon: prefixIcon,
        suffixIcon: IconButton(
            onPressed: onPressed, icon: suffixIcon ?? const Text('')),
        focusedBorder: outLineInputBorder(),
        enabledBorder: outLineInputBorder(),
        errorBorder: outLineInputBorder(),

        errorMaxLines: 1,
      ),
    );
  }
}

OutlineInputBorder outLineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(6.r),
    borderSide: BorderSide(color: AppColors.secondary, width: .5.w),
  );
}
