import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoflutterapp/api/api.dart';
import 'package:todoflutterapp/models/todo.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  final todoTitleController = TextEditingController();
  final todoDescripController = TextEditingController();
  final todoAnneeController = TextEditingController();

  void onAdd() {
    final String titleVal = todoTitleController.text;
    final String descripVal = todoDescripController.text;
    final String anneeVal = todoAnneeController.text;

    if (titleVal.isNotEmpty && descripVal.isNotEmpty && anneeVal.isNotEmpty) {
      final Todo todo = Todo(
          id: id, title: titleVal, description: descripVal, annee: anneeVal);
          Provider.of<TodoProvider>(context).
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a todo"),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(children: [
              TextField(
                controller: todoTitleController,
              ),
              TextField(
                controller: todoDescripController,
              ),
              TextField(
                controller: todoAnneeController,
              ),
              ElevatedButton(onPressed: null),
            ]),
          )
        ],
      ),
    );
  }
}
