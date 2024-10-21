import 'package:flutter/widgets.dart';
import 'package:hospital_mange/hospital_mangement.dart';
import 'package:hospital_mange/core/routing/app_router.dart';

void main() {
  runApp(
    HospitalMangement(
      appRouter: AppRouter(),
    ),
  );
}
