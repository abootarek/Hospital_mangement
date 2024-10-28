import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/extintion.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/routing/routs.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';

class CategorysManger extends StatelessWidget {
  const CategorysManger({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                context.pushNamed(Routes.casesMangerScreen);
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 26.h,
                ),
                width: 163.w,
                height: 250.h,
                decoration: BoxDecoration(
                  color: ColorsApp.lightblue,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: ColorsApp.white,
                            width: 2.0,
                          ),
                        ),
                        child: const Icon(
                          Icons.add_location_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                      virticalspace(15),
                      Text(
                        'Cases',
                        style: TextStyles.font20white,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            horixontalspace(15),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 26.h,
              ),
              width: 163.w,
              height: 250.h,
              decoration: BoxDecoration(
                color: ColorsApp.maingreen,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100.0.w,
                      height: 100.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: ColorsApp.white,
                          width: 2.0.w,
                        ),
                      ),
                      child: const Icon(
                        Icons.check_box_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    virticalspace(15),
                    Text(
                      'Tasks',
                      style: TextStyles.font20white,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        virticalspace(15),
        Row(
          children: [
            virticalspace(15),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 26.h,
              ),
              width: 163.w,
              height: 250.h,
              decoration: BoxDecoration(
                color: ColorsApp.mainyellow.withRed(
                  460,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.pushNamed(Routes.empolyeeScreen);
                      },
                      child: Container(
                        width: 100.0.w,
                        height: 100.0.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: ColorsApp.white,
                            width: 2.0.w,
                          ),
                        ),
                        child: const Icon(
                          Icons.account_box,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    ),
                    virticalspace(15),
                    Text(
                      'Employee',
                      style: TextStyles.font20white,
                    )
                  ],
                ),
              ),
            ),
            horixontalspace(15),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 26.h,
              ),
              width: 163.w,
              height: 250.h,
              decoration: BoxDecoration(
                color: ColorsApp.mainheavenly,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 100.0.w,
                      height: 100.0.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(
                          color: ColorsApp.white,
                          width: 2.0.w,
                        ),
                      ),
                      child: const Icon(
                        Icons.fingerprint,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                    virticalspace(15),
                    Text(
                      'attendance-leaving',
                      style: TextStyles.font17white,
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
