
import 'package:fitness/config/styles.dart';
import 'package:flutter/material.dart';

class CreateAccountText extends StatelessWidget {
  const CreateAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.center,
      child: Text(
        "Create Account ?",
        style: Styles.style12W700Green,
      ),
    );
  }
}
