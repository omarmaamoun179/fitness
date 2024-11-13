import 'package:fitness/config/routes/app_routes.dart';
import 'package:fitness/config/routes/routes.dart';
import 'package:fitness/config/styles.dart';
import 'package:fitness/config/theme/light_theme.dart';
import 'package:fitness/core/helper/custom_sized.dart';
import 'package:fitness/features/auth/presentation/widgets/head_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    const FitnessAp(),
  );
}

class FitnessAp extends StatelessWidget {
  const FitnessAp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      ensureScreenSize: true,
      designSize: const Size(393, 852),
      enableScaleText: () => true,
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      child: MaterialApp(
          title: 'Fitness App',
          theme: AppTheme.lightTheme,
          themeMode: ThemeMode.system,
          darkTheme: AppTheme.darkTheme,
          initialRoute: Routes.setGender,
          onGenerateRoute: AppRoutes.onGenerate),
    );
  }
}

