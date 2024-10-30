import 'package:flutter/widgets.dart';
import 'package:hospital_mange/core/di/dependancy_ingection.dart';
import 'package:hospital_mange/hospital_mangement.dart';
import 'package:hospital_mange/core/routing/app_router.dart';

void main() {
  setupGetIt();
  runApp(
    HospitalMangement(
      appRouter: AppRouter(),
    ),
  );
}
