import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/colors.dart';
import '../../../../core/theming/style.dart';
import '../../../manger/cases_manger/ui/widget/icon_and_named_and_buttons.dart';

class CasesDoctorScreen extends StatelessWidget {
  const CasesDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: ColorsApp.backgroundcolor,
        title: Text(
          'Cases',
          style: TextStyles.font17Black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 17.w,
          vertical: 20.h,
        ),
        child: const Column(
          children: [
            IconsAndNamedAndButtons(),
          ],
        ),
      ),
    );
  }
}
