import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/helper/sixbox.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/style.dart';

class DetailsOfProfile extends StatelessWidget {
  const DetailsOfProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 20.h,
      ),
      decoration: BoxDecoration(
        color: ColorsApp.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsApp.transheavenly,
                ),
                child: Icon(
                  Icons.local_hospital_outlined,
                  size: 25,
                  color: ColorsApp.mainheavenly,
                ),
              ),
              horixontalspace(10),
              Text(
                'Specialist - Doctor',
                style: TextStyles.font13black,
              ),
            ],
          ),
          virticalspace(25),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsApp.transheavenly,
                ),
                child: Icon(
                  Icons.transgender_rounded,
                  size: 25,
                  color: ColorsApp.mainheavenly,
                ),
              ),
              horixontalspace(10),
              Text(
                'Male',
                style: TextStyles.font13black,
              ),
            ],
          ),
          virticalspace(25),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsApp.transheavenly,
                ),
                child: Icon(
                  Icons.date_range_outlined,
                  size: 25,
                  color: ColorsApp.mainheavenly,
                ),
              ),
              horixontalspace(10),
              Text(
                'Specialist - Doctor',
                style: TextStyles.font13black,
              ),
            ],
          ),
          virticalspace(25),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsApp.transheavenly,
                ),
                child: Icon(
                  Icons.location_on_outlined,
                  size: 25,
                  color: ColorsApp.mainheavenly,
                ),
              ),
              horixontalspace(10),
              Text(
                'Egypt - Cairo',
                style: TextStyles.font13black,
              ),
            ],
          ),
          virticalspace(25),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsApp.transheavenly,
                ),
                child: Icon(
                  Icons.favorite_outline_rounded,
                  size: 25,
                  color: ColorsApp.mainheavenly,
                ),
              ),
              horixontalspace(10),
              Text(
                'single',
                style: TextStyles.font13black,
              ),
            ],
          ),
          virticalspace(25),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsApp.transheavenly,
                ),
                child: Icon(
                  Icons.email_outlined,
                  size: 25,
                  color: ColorsApp.mainheavenly,
                ),
              ),
              horixontalspace(10),
              Text(
                'mm123@gmail.com',
                style: TextStyles.font13black,
              ),
            ],
          ),
          virticalspace(25),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsApp.transheavenly,
                ),
                child: Icon(
                  Icons.phone_outlined,
                  size: 25,
                  color: ColorsApp.mainheavenly,
                ),
              ),
              horixontalspace(10),
              Text(
                '0115405558',
                style: TextStyles.font13black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
