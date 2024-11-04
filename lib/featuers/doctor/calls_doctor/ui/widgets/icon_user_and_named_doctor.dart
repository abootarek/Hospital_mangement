import 'package:flutter/material.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';

class NamedAndIconsDoctor extends StatelessWidget {
  const NamedAndIconsDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: ColorsApp.mainheavenly,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.account_circle_outlined,
                size: 30,
                color: ColorsApp.white,
              ),
            ),
            horixontalspace(13),
            Text(
              'Abdolrahman Ramdan',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: TextStyles.font17Black,
            )
          ],
        ),
        virticalspace(13),
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: ColorsApp.mainheavenly,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.date_range,
                size: 30,
                color: ColorsApp.white,
              ),
            ),
            horixontalspace(13),
            Text(
              '24 .04 .2021',
              style: TextStyles.font17Black,
            ),
          ],
        ),
      ],
    );
  }
}
