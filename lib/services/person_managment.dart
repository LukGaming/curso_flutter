import 'package:curso_flutter/abstracts/abstract_person_managment.dart';
import 'package:curso_flutter/entity/models/person.dart';

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
  Future<List<Person>> getPersons() {
    // TODO: implement getPersons
    throw UnimplementedError();
  }

  @override
  Future<Person> updatePerson(Person person) {
    // TODO: implement updatePerson
    throw UnimplementedError();
  }
}
