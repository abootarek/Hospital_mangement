import 'package:flutter/material.dart';
import 'package:hospital_mange/core/routing/routs.dart';
import 'package:hospital_mange/featuers/manger/auth/add_user_form_filed/ui/add_user_screen.dart';
import 'package:hospital_mange/featuers/manger/case_detaails/ui/case_details_screen.dart';
import 'package:hospital_mange/featuers/manger/cases_manger/ui/cases_screen.dart';
import 'package:hospital_mange/featuers/manger/home_manger/ui/manger_screen.dart';
import '../../featuers/manger/auth/profile/ui/profile_screen.dart';
import '../../featuers/manger/empolyee_screen/ui/empolyee_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // HomeMangerScreen
      case Routes.onBordingScreen:
        return MaterialPageRoute(
          builder: (context) => const MangerScreen(),
        );
      // casesMangerScreen
      case Routes.casesMangerScreen:
        return MaterialPageRoute(
          builder: (context) => const CasesMangerScreen(),
        );
      // caseDetailsScreen
      case Routes.casesDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => const CaseDetailsScreen(),
        );
      //EmpolyeeScreen
      case Routes.empolyeeScreen:
        return MaterialPageRoute(
          builder: (context) => const EmpolyeeScreen(),
        );
      // Add User
      case Routes.addUser:
        return MaterialPageRoute(
          builder: (context) => const AddUserScreen(),
        );
      //My profile
      case Routes.myProfile:
        return MaterialPageRoute(
          builder: (context) => const ProfileScreen(),
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
