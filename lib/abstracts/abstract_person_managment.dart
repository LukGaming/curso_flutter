import 'package:curso_flutter/entity/models/person.dart';

abstract class AbstractPersonManagment {
  Future<List<Person>> getPersons();
  Future<Person> getPersonById(int id);
  Future<Person> createPerson(Person person);
  Future<bool> deletePerson(Person person);
  Future<Person> updatePerson(Person person);
}
