import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/extintion.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/routing/routs.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';
import 'package:hospital_mange/core/widget/app_text_button.dart';
import 'package:hospital_mange/featuers/manger/cases_manger/ui/widget/icon_user_and_named.dart';

import 'icon_user_and_named_doctor.dart';

class IconsAndNamedAndButtonsDoctor extends StatelessWidget {
  const IconsAndNamedAndButtonsDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 12.h,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsApp.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const NamedAndIconsDoctor(),
          virticalspace(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextButton(
                horizontalPadding: 25,
                buttonWidth: 150,
                buttonHeight: 55,
                icon: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsApp.white,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.done,
                    color: ColorsApp.white,
                  ),
                ),
                buttonText: 'Accept',
                textStyle: TextStyles.font17white,
                onPressed: () {},
              ),
              horixontalspace(10),
              AppTextButton(
                backgroundColor: ColorsApp.oringe,
                horizontalPadding: 30,
                icon: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: ColorsApp.white,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(
                    Icons.close,
                    color: ColorsApp.white,
                  ),
                ),
                buttonWidth: 150,
                buttonHeight: 55,
                buttonText: 'Busy',
                textStyle: TextStyles.font17white,
                onPressed: () {},
              ),
            ],
          ),
          virticalspace(20),
        ],
      ),
    );
  }
}
