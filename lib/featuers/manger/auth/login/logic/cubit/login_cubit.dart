import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hospital_mange/featuers/manger/auth/login/data/models/login_request_body.dart';
import 'package:hospital_mange/featuers/manger/auth/login/data/repo/login_repo.dart';
import 'package:hospital_mange/featuers/manger/auth/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;

  LoginCubit(this._loginRepo) : super(const LoginState.initial());
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void emitLogin() async {
    emit(const LoginState.loading());

    final response = await _loginRepo.login(LoginRequestBody(
      email: emailController.text,
      password: passwordController.text,
    ));
    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error) {
      emit(LoginState.error(error: error.failure.message.toString()));
      // emit(LoginState.error(
      //   error: error.failure.message.toString(),
      // ));
    });
  }
}
