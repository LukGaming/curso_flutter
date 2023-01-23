import 'package:curso_flutter/abstracts/abstract_person_managment.dart';
import 'package:curso_flutter/entity/models/person.dart';
import 'package:dio/dio.dart';

class PersonManagment implements AbstractPersonManagment {
  @override
  Future<Person> createPerson(Person person) {
    // TODO: implement createPerson
    throw UnimplementedError();
  }

  @override
  Future<bool> deletePerson(Person person) {
    // TODO: implement deletePerson
    throw UnimplementedError();
  }

  @override
  Future<Person> getPersonById(int id) {
    // TODO: implement getPersonById
    throw UnimplementedError();
  }

  @override
  Future<List<Person>> getPersons() async {
    List<Person> personList = [];

    var result = await Dio().get("http://192.168.0.3:3000/persons");

    (result.data as List).forEach((element) {
      personList.add(Person(
        id: element["id"],
        name: element["name"],
        lastName: element["lastName"],
        birthDate: element["birthDate"],
        email: element["email"],
      ));
    });

    return personList;
  }

  @override
  Future<Person> updatePerson(Person person) {
    // TODO: implement updatePerson
    throw UnimplementedError();
  }
}
