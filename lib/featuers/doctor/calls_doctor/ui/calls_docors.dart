import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helper/sixbox.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/style.dart';
import 'widgets/icon_and_named_and_buttons_doctor.dart';
import 'widgets/icon_user_and_named_doctor.dart';

class CallsDoctors extends StatelessWidget {
  const CallsDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.backgroundcolor,
      appBar: AppBar(
        backgroundColor: ColorsApp.backgroundcolor,
        title: Text('Calls', style: TextStyles.font17Black),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 17.w,
          vertical: 20.h,
        ),
        child: const Column(
          children: [
            IconsAndNamedAndButtonsDoctor(),
          ],
        ),
      ),
    );
  }
}
