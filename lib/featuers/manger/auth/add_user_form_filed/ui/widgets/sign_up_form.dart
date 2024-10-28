import 'package:flutter/material.dart';
import '../../../../../../core/helper/app_regex.dart';
import '../../../../../../core/helper/sixbox.dart';
import '../../../../../../core/theming/colors.dart';
import '../../../../../../core/theming/style.dart';
import '../../../../../../core/widget/app_text_form_field.dart';
import 'drop_down_button_form_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // first name yaaa negim
          AppTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your first name';
              }
              return null;
            },
            hinttext: 'First name',
            hintStyle: TextStyles.font14grey,
            prefixicon: Icon(
              Icons.account_circle_outlined,
              size: 25,
              color: ColorsApp.mainheavenly,
            ),
          ),
          virticalspace(15),
          // last name yaaa negim
          AppTextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your last name';
              }
              return null;
            },
            hinttext: 'Last name',
            hintStyle: TextStyles.font14grey,
            prefixicon: Icon(
              Icons.account_circle_outlined,
              size: 25,
              color: ColorsApp.mainheavenly,
            ),
          ),
          virticalspace(15),
          // gender yaaa negim
          DropDownFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your gender';
              }
              return null;
            },
            hinttext: 'Gender',
            prefixicon: Icon(
              Icons.transgender_rounded,
              color: ColorsApp.mainheavenly,
            ),
            options: const [
              'Male',
              'Female',
            ],
          ),
          virticalspace(15),
          // specialist yaaa negim
          DropDownFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your specialist';
              }
              return null;
            },
            hinttext: 'Specialist',
            prefixicon: Icon(
              Icons.local_hospital_outlined,
              color: ColorsApp.mainheavenly,
            ),
            options: const [
              'doctor',
              'manager',
              'user',
            ],
          ),
          virticalspace(15),
          // date yaaa negim
          AppTextFormField(
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isDateValid(value)) {
                return 'Enter date in DD-MM-YYYY format';
              }
              return null;
            },
            keyboardType: TextInputType.number,
            hinttext: 'Date of birth',
            hintStyle: TextStyles.font14grey,
            prefixicon: Icon(
              Icons.date_range,
              size: 25,
              color: ColorsApp.mainheavenly,
            ),
          ),
          virticalspace(15),
          // statues yaaa negim
          DropDownFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your statues';
              }
              return null;
            },
            hinttext: 'Statues',
            prefixicon: Icon(
              Icons.favorite_border,
              color: ColorsApp.mainheavenly,
            ),
            options: const [
              'single',
              'married',
            ],
          ),
          virticalspace(15),
          // adress yaaa negim
          AppTextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your adress';
                }
                return null;
              },
              hinttext: 'Adress',
              hintStyle: TextStyles.font14grey,
              prefixicon: Icon(
                Icons.location_on_outlined,
                size: 25,
                color: ColorsApp.mainheavenly,
              )),
          virticalspace(15),
          // phone yaaa negim
          AppTextFormField(
              keyboardType: TextInputType.number,
              hinttext: 'Phone number',
              hintStyle: TextStyles.font14grey,
              prefixicon: Icon(
                Icons.phone_outlined,
                size: 25,
                color: ColorsApp.mainheavenly,
              ),
              validator: (value) {
                if (value == null ||
                    value.isEmpty ||
                    !AppRegex.isPhoneNumberValid(value)) {
                  return 'Please enter a valid phone number';
                }
                return null;
              }),
          virticalspace(15),
          // email yaaa negim
          AppTextFormField(
            hinttext: 'E-mail',
            hintStyle: TextStyles.font14grey,
            prefixicon: Icon(
              Icons.email_outlined,
              size: 25,
              color: ColorsApp.mainheavenly,
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),
          virticalspace(15),
          // password yaaa negim
          AppTextFormField(
            hinttext: "Password",
            hintStyle: TextStyles.font14grey,
            prefixicon: Icon(
              Icons.lock_outline,
              size: 25,
              color: ColorsApp.mainheavenly,
            ),
            isObscureText: isObscureText,
            suffixicon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
                size: 25,
                color: ColorsApp.mainheavenly,
              ),
            ),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.hasMinLength(value) ||
                  !AppRegex.hasUpperCase(value) ||
                  !AppRegex.hasLowerCase(value) ||
                  !AppRegex.hasNumber(value) ||
                  !AppRegex.hasSpecialCharacter(value)) {
                return "Please enter a valid password";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
