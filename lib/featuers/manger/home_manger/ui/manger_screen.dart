import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/featuers/manger/home_manger/ui/widgets/categorys_manger.dart';
import 'package:hospital_mange/featuers/manger/home_manger/ui/widgets/image_and_name_and_speciality.dart';

class MangerScreen extends StatelessWidget {
  const MangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 17.w,
            vertical: 20.h,
          ),
          child: Column(
            children: [
              const ImageAndNameAndspecialty(),
              virticalspace(15),
               CategorysManger(),
            ],
          ),
        ),
      ),
    );
  }
}
