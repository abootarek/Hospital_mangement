import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_mange/core/di/dependancy_ingection.dart';
import 'package:hospital_mange/core/routing/routs.dart';
import 'package:hospital_mange/featuers/manger/auth/add_user_form_filed/ui/add_user_screen.dart';
import 'package:hospital_mange/featuers/manger/auth/login/logic/cubit/login_cubit.dart';
import 'package:hospital_mange/featuers/manger/auth/login/ui/login_screen.dart';
import 'package:hospital_mange/featuers/manger/case_detaails/ui/case_details_screen.dart';
import 'package:hospital_mange/featuers/manger/cases_manger/ui/cases_screen.dart';
import 'package:hospital_mange/featuers/manger/home_manger/ui/manger_screen.dart';
import '../../featuers/manger/auth/add_user_form_filed/data/logic/cubit/sign_up_cubit.dart';
import '../../featuers/manger/auth/profile/ui/profile_screen.dart';
import '../../featuers/manger/empolyee_screen/ui/empolyee_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //LoginScreen
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(getIt()),
            child: const LoginScreen(),
          ),
        );
      // HomeMangerScreen
      case Routes.mangerScreen:
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
      // Add User Screen
      case Routes.addUser:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => SignUpCubit(getIt()),
            child: const AddUserScreen(),
          ),
        );
      //My profile Screen
      case Routes.myProfile:
        return MaterialPageRoute(
          builder: (context) => const ProfileScreen(),
        );
// Error Message
      default:
        return null;
    }
  }
}
