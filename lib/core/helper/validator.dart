class Validator {
  static final RegExp nameRegExp = RegExp(r"^[\u0600-\u06FFa-zA-Z\s-]{2,50}$");
  // static final RegExp passwordRegExp = RegExp(r"^.{6,}$");

  static final RegExp passwordRegExp = RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');

  static final RegExp emailRegExp =
      RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
  static final RegExp egyptPhoneRegExp = RegExp(r"^01[0-25]\d{8}$");
  static final RegExp dubaiPhoneRegExp = RegExp(r"^04\d{7}$");

  static String? validateName(String value) {
    if (value.isEmpty || !nameRegExp.hasMatch(value)) {
      return "Invalid name ";
    }
    return null;
  }

  static String? validatePassword(String value) {
    if (value.isEmpty || !passwordRegExp.hasMatch(value)) {
      return "Password must be at least 6 characters\nPassword must contain at least one uppercase\nPassword must contain at least one lowercase\nPassword must contain at least one number\n Password must contain at least one special character.\n";
      // "and include uppercase, lowercase,\n"
      // "number, and special character.";
    }
    return null;
  }

  static String? validateEmail(String value) {
    if (value.isEmpty || !emailRegExp.hasMatch(value)) {
      return "Invalid email";
    }
    return null;
  }

  static String? validatePhone(String value) {
    if (value.isEmpty ||
        (!egyptPhoneRegExp.hasMatch(value) &&
            !dubaiPhoneRegExp.hasMatch(value))) {
      return "Invalid phone number";
    }
    return null;
  }

  static String? validateConfirmPassword(
      String password, String confirmPassword) {
    if (confirmPassword.isEmpty || password != confirmPassword) {
      return "Passwords do not match";
    }
    return null;
  }
}
