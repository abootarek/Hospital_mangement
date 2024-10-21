import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';

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
          child: Image.asset(
            'assets/images/imge.jpg',
            height: 45.h,
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
        trailing: const Icon(
          Icons.add_alert_outlined,
          size: 30,
        ),
      ),
    );
  }
}
