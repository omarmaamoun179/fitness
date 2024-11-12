import 'package:fitness/config/routes/routes.dart';
import 'package:fitness/features/auth/presentation/pages/login_screen.dart';
import 'package:fitness/features/onboadring/presentation/pages/on_boadring_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
 static Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());

        case Routes.login:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
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
