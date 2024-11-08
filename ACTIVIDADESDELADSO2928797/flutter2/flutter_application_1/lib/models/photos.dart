import 'dart:convert';

class Photos {
  int? albumId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;

  Photos(String jsonString) {
    Map<String, dynamic> data = jsonDecode(jsonString);
    albumId = data['albumId'];
    id = data['id'];
    title = data['title'];
    url = data['url'];
    thumbnailUrl = data['thumbnailUrl'];
  }
}
