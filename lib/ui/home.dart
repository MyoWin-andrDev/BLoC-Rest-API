import 'package:bloc_rest_api/data/model/student_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/get/get_student_cubit.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context)  {
    BlocProvider.of<GetStudentCubit>(context).getAllStudent();
    return Scaffold(
      appBar: AppBar(title: Text("Student List")),
      body: BlocBuilder<GetStudentCubit, GetStudentState>(
        builder: (context, state) {
          if (state is GetStudentSuccess) {
            List<StudentModel> studentList = state.studentList;
            return ListView.builder(
              itemCount: studentList.length,
              itemBuilder: (context, index) {
                var studentItem = studentList[index];
                return ListTile(
                  leading: Text(studentItem.id),
                  title: Text(studentItem.name),
                  subtitle: Text(studentItem.age),
                  trailing: Text(studentItem.job),
                );
              },
            );
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
