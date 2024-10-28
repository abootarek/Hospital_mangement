import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/helper/sixbox.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';

class IamgeAndNameDocAndSpeciailty extends StatelessWidget {
  const IamgeAndNameDocAndSpeciailty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 30,
              child: Image.asset('assets/images/Frame 2.png'),
            ),
            Positioned(
              right: 7,
              bottom: 10,
              child: CircleAvatar(
                radius: 5,
                backgroundColor: ColorsApp.maingreen,
              ),
            ),
          ],
        ),
        horixontalspace(10),
        Column(
          children: [
            Text(
              'Ebrahem Khaled',
              style: TextStyles.font14lightblack,
            ),
            virticalspace(3),
            Text(
              'Ebrahem Khaled',
              style: TextStyles.font14grey,
            ),
          ],
        )
      ],
    );
  }
}
