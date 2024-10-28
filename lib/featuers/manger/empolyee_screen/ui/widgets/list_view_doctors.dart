import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/featuers/manger/empolyee_screen/ui/widgets/iamge_and_name_doc_and_speciailty.dart';

import '../../../../../core/helper/sixbox.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';

class ListViewDoctors extends StatelessWidget {
  const ListViewDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 470.h,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const IamgeAndNameDocAndSpeciailty();
        },
      ),
    );
  }
}
