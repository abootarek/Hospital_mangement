import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/extintion.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';

import '../../../../../core/routing/routs.dart';

class ImageAndNameAndspecialty extends StatelessWidget {
  const ImageAndNameAndspecialty({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorsApp.white,
      elevation: 0,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: GestureDetector(
            onTap: () {
              context.pushNamed(Routes.myProfile);
            },
            child: Image.asset(
              'assets/images/imge.jpg',
              height: 45.h,
            ),
          ),
        ),
        title: Text(
          'Mohamed Tarek',
          style: TextStyles.font17Black,
        ),
        subtitle: Text(
          'Specialist , Manger',
          style: TextStyles.font12mainheavenly,
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Badge.count(
            count: 3,
            child: const Icon(Icons.notifications_outlined),
          ),
        ),
      ),
    );
  }
}
