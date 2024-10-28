import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widget/app_text_form_field.dart';

class SearchEmployee extends StatelessWidget {
  const SearchEmployee({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      hinttext: 'Search for Employee',
      hintStyle: TextStyles.font14grey,
      prefixicon: Icon(
        Icons.search,
        color: ColorsApp.mainblack,
        size: 25,
      ),
    );
  }
}
