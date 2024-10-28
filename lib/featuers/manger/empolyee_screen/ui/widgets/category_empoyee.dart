import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helper/sixbox.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';

class CategoryEmployee extends StatelessWidget {
  const CategoryEmployee({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: ColorsApp.mainheavenly,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: ColorsApp.graywhight,
            ),
          ),
          child: Text(
            'All',
            style: TextStyles.font13white,
          ),
        ),
        horixontalspace(15),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: ColorsApp.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: ColorsApp.graywhight,
            ),
          ),
          child: Text(
            'Doctors',
            style: TextStyles.font13black,
          ),
        ),
        horixontalspace(10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: ColorsApp.white,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: ColorsApp.graywhight,
            ),
          ),
          child: Text(
            'Manager',
            style: TextStyles.font13black,
          ),
        ),
      ],
    );
  }
}
