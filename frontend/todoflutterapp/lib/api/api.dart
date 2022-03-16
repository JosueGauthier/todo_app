import 'dart:convert';

import 'package:flutter/cupertino.dart';

import '../models/todo.dart';

import 'package:http/http.dart' as http;

class TodoProvider with ChangeNotifier {
  TodoProvider() {
    print("0");
    this.fetchTasks();
    print("1");
  }
  List<Todo> _todos = [];
  List<Todo> get todos {
    return [..._todos];
  }

  fetchTasks() async {
    const url = 'http://10.0.2.2:8000/apis/v1/?format=json';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = json.decode(response.body) as List;
      print(data);
      _todos = data.map<Todo>((json) => Todo.fromJson(json)).toList();
      print(_todos);
    }
  }
}
