import 'package:doctor_app/core/routing/app_router.dart';
import 'package:doctor_app/core/routing/routes.dart';
import 'package:doctor_app/core/theme/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  const DocApp({super.key, required this.appRouter});
  final AppRouter appRouter;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Doctor App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorManager.blueMain,
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
        ),
        initialRoute: Routes.OnboardingScreen,
        onGenerateRoute: appRouter.onGenerateRoute,
      ),
    );
  }
}
