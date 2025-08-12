part of 'post_student_cubit.dart';

@immutable
abstract class PostStudentState extends Equatable{

  @override
  List<Object> get props => [];
}

final class PostStudentInitial extends PostStudentState {}

class PostStudentSuccess extends PostStudentState{
  late final String success;
  PostStudentSuccess(this.success);

  @override
  // TODO: implement props
  List<Object> get props => [success];
}

class PostStudentFailure extends PostStudentState{
  late final String error;
  PostStudentFailure(this.error);

  @override
  // TODO: implement props
  List<Object> get props => [error];
}