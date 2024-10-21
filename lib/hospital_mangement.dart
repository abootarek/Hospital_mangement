import 'package:flutter/material.dart';


import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routs.dart';
import 'core/theming/colors.dart';

class HospitalMangement extends StatelessWidget {
  final AppRouter appRouter;

  const HospitalMangement({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'HospitalMangement',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: ColorsApp.white,
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onbordingscreen, // start screen =>onbordingscreen
      ),
    );
  }
}
