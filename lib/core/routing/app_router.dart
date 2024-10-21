import 'package:flutter/material.dart';
import 'package:hospital_mange/core/routing/routs.dart';
import 'package:hospital_mange/featuers/manger/cases_manger/ui/cases_screen.dart';
import 'package:hospital_mange/featuers/manger/home_manger/ui/manger_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // HomeMangerScreen
      case Routes.onbordingscreen:
        return MaterialPageRoute(
          builder: (context) => const MangerScreen(),
        );
      // casesMangerScreen
      case Routes.casesmangerscreen:
        return MaterialPageRoute(
          builder: (context) => const CasesMangerScreen(),
        );
//// Error Message
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
              ),
            ),
          ),
        );
    }
  }
}
