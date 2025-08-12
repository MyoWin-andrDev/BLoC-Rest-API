import 'package:bloc/bloc.dart';
import 'package:bloc_rest_api/repository/student_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../data/model/student_model.dart';

part 'post_student_state.dart';

class PostStudentCubit extends Cubit<PostStudentState> {
  final StudentRepository _studentRepository;
  PostStudentCubit(this._studentRepository) : super(PostStudentInitial());
  
  void addStudent(StudentModel  student){
    emit(PostStudentInitial());
    _studentRepository.addStudent(student)
    .then((value) =>
        emit(PostStudentSuccess("Successfully Added"))
    )
    .catchError((e) => emit(PostStudentFailure("Post Student Failed")));
  }
}
