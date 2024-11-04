import 'package:flutter/material.dart';
import 'package:hospital_mange/featuers/doctor/cases_details_dector/ui/widgets/button_end_doctor.dart';
import 'package:hospital_mange/featuers/doctor/cases_details_dector/ui/widgets/details_doctors.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/style.dart';

class CasesDetailsDoctorScreen extends StatelessWidget {
  const CasesDetailsDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsApp.backgroundcolor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Cases',
          style: TextStyles.font17Black,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            DetalisDoctors(),
            Spacer(),
            ButtonEndCaseDoc(),
          ],
        ),
      ),
    );
  }
}
