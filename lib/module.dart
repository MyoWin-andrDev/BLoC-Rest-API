import 'package:bloc_rest_api/bloc/get/get_student_cubit.dart';
import 'package:bloc_rest_api/network/api_service.dart';
import 'package:bloc_rest_api/repository/student_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

var getIt = GetIt.I;
void locator(){
  Dio dio = Dio();
  getIt.registerLazySingleton(() => dio);

  ApiService apiService = ApiService(getIt.call());
  getIt.registerLazySingleton(() => apiService);

  StudentRepository studentRepository = StudentRepository(getIt.call());
  getIt.registerLazySingleton(() => studentRepository);

  GetStudentCubit studentCubit = GetStudentCubit(getIt.call());
  getIt.registerLazySingleton(() => studentCubit);
}