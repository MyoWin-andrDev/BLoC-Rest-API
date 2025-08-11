import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../data/model/student_model.dart';

part 'get_student_state.dart';

class GetStudentCubit extends Cubit<GetStudentState> {
  GetStudentCubit() : super(GetStudentInitial());
}
