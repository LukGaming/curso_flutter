import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddPerson extends StatefulWidget {
  const AddPerson({super.key});

  @override
  State<AddPerson> createState() => _AddPersonState();
}

class _AddPersonState extends State<AddPerson> {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController birthDateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adicionando Pessoas"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: "Nome"),
                controller: nameController,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Sobrenome"),
                controller: lastNameController,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Email"),
                controller: emailController,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Data de Nascimento"),
                controller: birthDateController,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Cadastrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
