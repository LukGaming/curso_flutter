import 'package:curso_flutter/entity/models/person.dart';
import 'package:curso_flutter/logic/person_list/person_list_cubit.dart';
import 'package:curso_flutter/presentation/person_list_widget.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => PersonListCubit(),
        child: PersonsList(),
      ),
    );
  }
}
