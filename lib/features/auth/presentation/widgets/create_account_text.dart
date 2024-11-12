
import 'package:fitness/config/styles.dart';
import 'package:flutter/material.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({
    super.key, this.onTap, this.text,
  });
  final void Function()? onTap;
  final String? text ;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.center,
      child: GestureDetector(
        onTap: onTap,
        child: Text(
       text ??   "Create Account ?",
          style: Styles.style12W700Green,
        ),
      ),
    );
  }
}
