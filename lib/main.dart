import 'package:bloc_rest_api/bloc/get/get_student_cubit.dart';
import 'package:bloc_rest_api/module.dart';
import 'package:bloc_rest_api/ui/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main(){
  locator();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<GetStudentCubit>(
          create: (context) => getIt.call(),
          child: Home(),
      ),
    );
  }
}
