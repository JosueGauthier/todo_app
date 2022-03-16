class Todo {
  int id;
  String title = "test1";
  String description = "test";
  String annee = "1980";

  Todo(
      {required this.id,
      required this.title,
      required this.description,
      required this.annee});

  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      annee: json['annee'],
    );
  }
}
