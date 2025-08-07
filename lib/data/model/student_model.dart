import 'package:json_annotation/json_annotation.dart';
part 'student_model.g.dart';
@JsonSerializable()
class StudentModel{
  final String id;
  final String name;
  final String job;
  final String age;
  StudentModel(this.id, this.name, this.job, this.age);

  factory StudentModel.fromJson(Map<String, dynamic> json) => _$StudentModelFromJson(json);

  Map<String, dynamic> toJson() => _$StudentModelToJson(this);
}