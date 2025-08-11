import 'package:bloc/bloc.dart';
import 'package:bloc_rest_api/repository/student_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../data/model/student_model.dart';

part 'get_student_state.dart';

class GetStudentCubit extends Cubit<GetStudentState> {
  final StudentRepository _studentRepository;
  GetStudentCubit(this._studentRepository) : super(GetStudentInitial());

  void getAllStudent(){
    emit(GetStudentInitial());
    _studentRepository.getAllStudent()
    .then((value) => 
      emit(GetStudentSuccess(value))
    )
    .catchError((e) => 
      emit(GetStudentFailure("Student Loading Error"))
    );
  }
}

