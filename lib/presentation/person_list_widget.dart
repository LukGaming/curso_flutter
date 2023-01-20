import 'package:curso_flutter/entity/models/person.dart';
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
    var result = await Dio().get("http://192.168.0.3:3000/persons");
    setState(() {
      (result.data as List).forEach((element) {
        personList.add(Person(
          id: element["id"],
          name: element["name"],
          lastName: element["lastName"],
          birthDate: element["birthDate"],
          email: element["email"],
        ));
      });
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
