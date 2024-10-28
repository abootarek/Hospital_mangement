import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/widget/app_text_form_field.dart';
import 'package:hospital_mange/featuers/manger/auth/ui/widgets/drop_down_button_form_field.dart';

import '../../../../core/theming/style.dart';

class AddUserScreen extends StatelessWidget {
  const AddUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorsApp.white,
        centerTitle: true,
        title: Text(
          'Add User',
          style: TextStyles.font17Black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 20.h,
        ),
        child: Column(
          children: [
            AppTextFormField(
              hinttext: 'First name',
              hintStyle: TextStyles.font14grey,
              prefixicon: Icon(
                Icons.account_circle_outlined,
                size: 25,
                color: ColorsApp.mainheavenly,
              ),
            ),
            virticalspace(10),
            AppTextFormField(
              hinttext: 'Last name',
              hintStyle: TextStyles.font14grey,
              prefixicon: Icon(
                Icons.account_circle_outlined,
                size: 25,
                color: ColorsApp.mainheavenly,
              ),
            ),
            virticalspace(10),
            const DropDownFormField(
              hinttext: 'Gender',
              
              options: [
                'Male',
                'Female',
              ],
            ),
            // AppTextFormField(
            //   hinttext: 'Gender',
            //   hintStyle: TextStyles.font14grey,
            //   prefixicon: Icon(
            //     Icons.transgender_rounded,
            //     size: 25,
            //     color: ColorsApp.mainheavenly,
            //   ),
            // ),
            virticalspace(10),
            AppTextFormField(
              hinttext: 'Specialist',
              hintStyle: TextStyles.font14grey,
              prefixicon: Icon(
                Icons.account_circle_outlined,
                size: 25,
                color: ColorsApp.mainheavenly,
              ),
            ),
            virticalspace(10),
            AppTextFormField(
              hinttext: 'First name',
              hintStyle: TextStyles.font14grey,
              prefixicon: Icon(
                Icons.account_circle_outlined,
                size: 25,
                color: ColorsApp.mainheavenly,
              ),
            ),
            virticalspace(10),
            AppTextFormField(
              hinttext: 'First name',
              hintStyle: TextStyles.font14grey,
              prefixicon: Icon(
                Icons.account_circle_outlined,
                size: 25,
                color: ColorsApp.mainheavenly,
              ),
            ),
            virticalspace(10),
          ],
        ),
      ),
    );
  }
}
