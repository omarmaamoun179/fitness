import 'package:fitness/config/routes/routes.dart';
import 'package:fitness/features/auth/presentation/pages/login_screen.dart';
import 'package:fitness/features/auth/presentation/pages/otp_email_verfication_screen.dart';
import 'package:fitness/features/auth/presentation/pages/register_screen.dart';
import 'package:fitness/features/onboadring/presentation/pages/on_boadring_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class AppRoutes {
  static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return PageTransition(
          child: const OnBoardingScreen(),
          type: PageTransitionType.rightToLeftWithFade,
          settings: settings,
        );

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
          child: const OtpEmailVerificationScreen(),
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
