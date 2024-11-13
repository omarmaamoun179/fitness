import 'package:fitness/config/styles.dart';
import 'package:flutter/material.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({
    super.key,
    this.onTap,
    this.text,
  });
  final void Function()? onTap;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.center,
      child: GestureDetector(
        onTap: onTap,
        child: ShaderMask(
          shaderCallback: (bounds) => const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff4FDB74),
              Color(0xff13BC95),
            ],
          ).createShader(bounds),
          child: Text(
            text ?? "Create Account ?",
            style: Styles.style12W700Green,
          ),
        ),
      ),
    );
  }
}
