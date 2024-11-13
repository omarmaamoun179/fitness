import 'package:fitness/config/routes/routes.dart';
import 'package:fitness/features/auth/presentation/pages/email_verfifcation_success.dart';
import 'package:fitness/features/auth/presentation/pages/forget_password_screen.dart';
import 'package:fitness/features/auth/presentation/pages/login_screen.dart';
import 'package:fitness/features/auth/presentation/pages/otp_email_verfication_screen.dart';
import 'package:fitness/features/auth/presentation/pages/register_screen.dart';
import 'package:fitness/features/auth/presentation/pages/reset_password_screen.dart';
import 'package:fitness/features/onboadring/presentation/pages/on_boadring_screen.dart';
import 'package:fitness/features/requirement/presentation/pages/set_birthdate_screen.dart';
import 'package:fitness/features/requirement/presentation/pages/set_gender_screen.dart';
import 'package:fitness/features/requirement/presentation/pages/set_measuremeant_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppRoutes {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      //OnBoarding
      case Routes.onBoarding:
        return PageTransition(
          child: const OnBoardingScreen(),
          type: PageTransitionType.rightToLeftWithFade,
          settings: settings,
        );

        //Auth
      case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.register:
        return PageTransition(
          child: const RegisterScreen(),
          type: PageTransitionType.rightToLeftWithFade,
          settings: settings,
        );

      case Routes.verifyEmailOtp:
        return PageTransition(
          child: OtpEmailVerificationScreen(
            emailOrPassword: settings.arguments as String,
          ),
          type: PageTransitionType.rightToLeftWithFade,
          settings: settings,
        );

      case Routes.forgotPassword:
        return PageTransition(
          child: const ForgetPasswordScreen(),
          type: PageTransitionType.rightToLeftWithFade,
          settings: settings,
        );

      case Routes.emailVerificationSuccess:
        return PageTransition(
          child:  EmailVerificationSuccessScreen(
            isEmail: settings.arguments as bool,
          ),
          type: PageTransitionType.bottomToTop,
          settings: settings,
        );

      case Routes.resetPassword:
        return PageTransition(
            alignment: Alignment.bottomCenter,
            child: const ResetPasswordScreen(),
            type: PageTransitionType.scale);


            //Requirements 
      case Routes.setGender: 
        return PageTransition(
          child: const SetGenderScreen(),
          type: PageTransitionType.rightToLeftWithFade,
          settings: settings,
        );

        case Routes.setBirthDate:
        return PageTransition(
          child: const SetBirthDateScreen(),
          type: PageTransitionType.rightToLeftWithFade,
          settings: settings,
        );

        case Routes.setMeasurement:
        return PageTransition(
          child: const SetMeasurementScreen(),
          type: PageTransitionType.rightToLeftWithFade,
          settings: settings,
        );
      default:
        onUnknownRoute(settings);

        return null;
    }
  }

  static Widget onUnknownRoute(RouteSettings settings) {
    return Scaffold(
      body: Center(
        child: Text('No route defined for ${settings.name}'),
      ),
    );
  }
}
