import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/font_wight_helper.dart';

class TextStyles {
  static TextStyle font17Black = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.mainblack,
  );
  static TextStyle font12mainheavenly = TextStyle(
    fontSize: 12.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.mainheavenly,
  );
  static TextStyle font20white = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.white,
  );
  static TextStyle font17white = TextStyle(
    fontSize: 17.sp,
    fontWeight: FontWeightHelper.normal,
    color: ColorsApp.white,
  );
}
