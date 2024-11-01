import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/featuers/manger/auth/login/logic/cubit/login_cubit.dart';
import 'package:hospital_mange/featuers/manger/auth/login/ui/widgets/login_form.dart';
import 'package:hospital_mange/featuers/manger/auth/login/ui/widgets/login_welcome_page.dart';

import '../../../../../core/helper/sixbox.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widget/app_text_button.dart';
import 'widgets/login_bloc_listener.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Image.asset(
                  height: 200,
                  'assets/images/RectangleTop.png',
                ),
              ),
              Positioned(
                right: 0,
                bottom: 0,
                child: Image.asset(
                  'assets/images/Rectanglebutton.png',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.w,
                  vertical: 20.h,
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 100.5.h,
                  ),
                  child: Column(
                    children: [
                      const LoginWelcomeScreen(),
                      virticalspace(40),
                      const LoginForm(),
                      virticalspace(50),
                      AppTextButton(
                        backgroundColor: ColorsApp.mainheavenly,
                        horizontalPadding: 130,
                        buttonHeight: 60,
                        buttonText: 'Login',
                        textStyle: TextStyles.font17white,
                        onPressed: () {
                          vaildateGoLoding(context);
                        },
                      ),
                      const LoginBlocListener(),
                      virticalspace(40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void vaildateGoLoding(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLogin();
    }
  }
}
