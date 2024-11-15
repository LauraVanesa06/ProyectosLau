import 'dart:convert';

class Albums {
  int? userId;
  int? id;
  String? title;

Albums(String jsonString){
  Map<String, dynamic> data = jsonDecode(jsonString);

  userId = data['userId'];
  id = data['id'];
  title = data['title'];

}
}
