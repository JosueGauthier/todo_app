import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTodoScreen extends StatefulWidget {
  const AddTodoScreen({Key? key}) : super(key: key);

  @override
  State<AddTodoScreen> createState() => _AddTodoScreenState();
}

class _AddTodoScreenState extends State<AddTodoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a todo"),
      ),
      body: ListView(
        children: [
          Container(
            child: Column(children: [TextField()]),
          )
        ],
      ),
    );
  }
}
