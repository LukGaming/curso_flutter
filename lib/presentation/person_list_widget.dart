import 'package:curso_flutter/entity/models/person.dart';
import 'package:curso_flutter/services/person_managment.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonsList extends StatefulWidget {
  const PersonsList({super.key});

  @override
  State<PersonsList> createState() => _PersonsListState();
}

class _PersonsListState extends State<PersonsList> {
  List<Person> personList = [];
  @override
  void initState() {
    getPersons();
    // TODO: implement initState
    super.initState();
  }

  void getPersons() async {
    List<Person> getPersonList = await PersonManagment().getPersons();
    setState(() {
      personList = getPersonList;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de Pessoas"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: Text(
            "${personList[index].name} ${personList[index].lastName}",
          ),
          subtitle: Text(
            "${personList[index].email}",
          ),
          trailing: Text(
            "${personList[index].birthDate}",
          ),
        ),
        itemCount: personList.length,
      ),
    );
  }
}
