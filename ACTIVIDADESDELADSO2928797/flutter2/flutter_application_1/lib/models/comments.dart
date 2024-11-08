import 'dart:convert';

class Comments {
  int? userId;
  int? id;
  String? name;
  String? email;
  String? body;


  Comments(String jsonString) {
    Map<String, dynamic> data = jsonDecode(jsonString);
    userId = data['userId'];
    id = data['id'];
    name = data['name'];
    email = data['email'];
        body = data['body'];

  }
}