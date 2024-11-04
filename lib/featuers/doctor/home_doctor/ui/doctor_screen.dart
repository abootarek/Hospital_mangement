import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/featuers/doctor/home_doctor/ui/widgets/categorys_doctor.dart';

import '../../../../core/helper/sixbox.dart';
import 'widgets/image_and_name_specialty_doc.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({super.key});

  @override
  State<DoctorsScreen> createState() => _DoctorsScreenState();
}

class _DoctorsScreenState extends State<DoctorsScreen> {
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
              const ImageAndNameAndspecialtyDoc(),
              virticalspace(15),
              const CategorysDoctors(),
            ],
          ),
        ),
      ),
    );
  }
}
