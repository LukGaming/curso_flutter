import 'package:curso_flutter/entity/models/person.dart';
import 'package:curso_flutter/logic/person_list/person_list_cubit.dart';
import 'package:curso_flutter/presentation/add_person_widget.dart';
import 'package:curso_flutter/services/person_managment.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonsList extends StatefulWidget {
  const PersonsList({super.key});

  @override
  State<PersonsList> createState() => _PersonsListState();
}

class _PersonsListState extends State<PersonsList> {
  @override
  void initState() {
    context.read<PersonListCubit>().getPersons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Pessoas"),
      ),
      body: BlocConsumer<PersonListCubit, PersonListState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is PersonListLoeaded) {
            return ListView.builder(
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  "${state.personList[index].name} ${state.personList[index].lastName}",
                ),
                subtitle: Text(
                  "${state.personList[index].email}",
                ),
                trailing: Text(
                  "${state.personList[index].birthDate}",
                ),
              ),
              itemCount: state.personList.length,
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => AddPerson(),
          ));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
