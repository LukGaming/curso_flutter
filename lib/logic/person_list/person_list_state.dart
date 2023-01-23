// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'person_list_cubit.dart';

@immutable
abstract class PersonListState {}

class PersonListInitial extends PersonListState {}

class PersonListLoeaded extends PersonListState {
  final List<Person> personList;
  PersonListLoeaded({
    required this.personList,
  });
}
