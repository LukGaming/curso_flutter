import 'package:bloc/bloc.dart';
import 'package:curso_flutter/entity/models/person.dart';
import 'package:curso_flutter/services/person_managment.dart';
import 'package:meta/meta.dart';

part 'person_list_state.dart';

class PersonListCubit extends Cubit<PersonListState> {
  PersonListCubit() : super(PersonListInitial());

  void getPersons() async {
    List<Person> getPersonList = await PersonManagment().getPersons();
    emit(PersonListLoeaded(personList: getPersonList));
  }
}
