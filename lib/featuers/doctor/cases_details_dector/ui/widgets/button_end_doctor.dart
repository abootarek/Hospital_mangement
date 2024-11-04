import 'package:flutter/material.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widget/app_text_button.dart';

class ButtonEndCaseDoc extends StatelessWidget {
  const ButtonEndCaseDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      buttonHeight: 55,
      horizontalPadding: 120,
      backgroundColor: ColorsApp.mainred,
      buttonText: 'End Case',
      textStyle: TextStyles.font17white,
      onPressed: () {},
    );
  }
}
