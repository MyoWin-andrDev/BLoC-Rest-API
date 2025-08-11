part of 'get_student_cubit.dart';

@immutable
abstract class GetStudentState extends Equatable {
  @override
  List<Object> get props => [];
}

final class GetStudentInitial extends GetStudentState {}

class GetStudentSuccess extends GetStudentState {
  late final List<StudentModel> studentList;

  GetStudentSuccess(this.studentList);

  @override
  List<Object> get props => [studentList];
}

class GetStudentFailure extends GetStudentState {
  late final String error;

  GetStudentFailure(this.error);
  @override
  List<Object> get props => [error];
}
