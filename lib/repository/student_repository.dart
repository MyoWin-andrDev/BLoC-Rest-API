import 'package:bloc_rest_api/network/api_service.dart';

import '../data/model/student_model.dart';

class StudentRepository{
  final ApiService _apiService;
  StudentRepository(this._apiService);

  Future<List<StudentModel>> getAllStudent() => _apiService.getAllStudent();

  Future<StudentModel> addStudent(StudentModel student) => _apiService.createStudent(student);

  Future<StudentModel> updateStudent(String studentId, StudentModel student) => _apiService.updateStudent(studentId, student);

  Future<StudentModel> deleteStudent(String id) => _apiService.deleteStudent(id);
}