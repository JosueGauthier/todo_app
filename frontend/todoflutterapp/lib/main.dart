import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:todoflutterapp/api/api.dart';
import 'package:todoflutterapp/screens/addTodo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final todoP = Provider.of<TodoProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo App"),
      ),
      body: ListView.builder(
          itemCount: todoP.todos.length,
          itemBuilder: (BuildContext context, int index) {
            var itema =
                todoP.todos[index].description + " " + todoP.todos[index].annee;
            return ListTile(
              title: Text(todoP.todos[index].title),
              subtitle: Text(itema),
            );
          }),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (() {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: ((ctx) => AddTodoScreen())));
          })),
    );
  }
}
