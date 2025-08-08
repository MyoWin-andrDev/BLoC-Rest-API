import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';
import '../data/model/student_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://68918ec9447ff4f11fbce342.mockapi.io/")
abstract class ApiService{
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("student")
  Future<List<StudentModel>> getAllStudent();

  @POST('student')
  Future<StudentModel> createStudent(
      @Body() StudentModel student
      );

  @PUT('student/{id}')
  Future<StudentModel> updateStudent(
      @Path('id') String id,
      @Body() StudentModel student
      );

  @DELETE('student/{id}')
  Future<StudentModel> deleteStudent(
      @Path('id') String id
      );
}