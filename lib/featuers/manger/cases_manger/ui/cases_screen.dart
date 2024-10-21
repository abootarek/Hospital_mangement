import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';
import 'package:hospital_mange/featuers/manger/cases_manger/ui/widget/icon_and_named_and_buttons.dart';

class CasesMangerScreen extends StatelessWidget {
  const CasesMangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.backgroundcolor,
      appBar: AppBar(
        backgroundColor: ColorsApp.backgroundcolor,
        title: Text('Cases', style: TextStyles.font17Black),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 17.w,
          vertical: 20.h,
        ),
        child: Column(
          children: [
            const IconsAndNamedAndButtons(),
            virticalspace(20),
            const IconsAndNamedAndButtons(),
          ],
        ),
      ),
    );
  }
}
