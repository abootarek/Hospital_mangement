import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hospital_mange/core/networking/api_factory.dart';
import 'package:hospital_mange/featuers/manger/auth/login/data/apis/login_api_services.dart';
import 'package:hospital_mange/featuers/manger/auth/login/data/repo/login_repo.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //setupGetIt "main" متنساش تحطها في
  // dio and ApiServices
  Dio dio = DioFactory.getDio(); // يتعمل مره واحده
  getIt.registerLazySingleton<LoginApiServices>(() => LoginApiServices(dio));
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  // sinup
//  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
}
