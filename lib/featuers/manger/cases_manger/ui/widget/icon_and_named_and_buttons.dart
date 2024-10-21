import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';
import 'package:hospital_mange/core/widget/app_text_button.dart';
import 'package:hospital_mange/featuers/manger/cases_manger/ui/widget/icon_user_and_named.dart';

class IconsAndNamedAndButtons extends StatelessWidget {
  const IconsAndNamedAndButtons({
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
          const NamedAndIcons(),
          virticalspace(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextButton(
                buttonWidth: 130,
                buttonHeight: 65,
                buttonText: 'Accept',
                icon: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: ColorsApp.white,
                    ),
                  ),
                  child: Icon(
                    Icons.done_outlined,
                    size: 30,
                    color: ColorsApp.white,
                  ),
                ),
                textStyle: TextStyles.font17white,
                onPressed: () {},
              ),
              horixontalspace(13),
              AppTextButton(
                backgroundColor: ColorsApp.mainyellow,
                buttonWidth: 130,
                buttonHeight: 65,
                buttonText: 'cancel',
                icon: Icon(
                  Icons.cancel_outlined,
                  size: 30,
                  color: ColorsApp.white,
                ),
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
