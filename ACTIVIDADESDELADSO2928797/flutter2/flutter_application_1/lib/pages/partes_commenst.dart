import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/comments.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/widget/ErrorData.dart';
import 'package:flutter_application_1/widget/loading.dart';
import 'package:flutter_application_1/widget/success_comments.dart';

class ResultPage extends StatelessWidget {
  final String? commentsId;

  const ResultPage({super.key, required this.commentsId});

  Future<Comments> fetchData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/$commentsId');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return Comments(response.body);
    } else {
      throw Exception('Error al cargar datos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: const Color.fromARGB(255, 153, 57, 255),
      appBar:  AppBar(title: const Text('Resultados de su busqueda'),
              backgroundColor: const Color.fromARGB(255, 153, 57, 255),
              ),
      body: FutureBuilder<Comments>(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot<Comments> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: loading());
          } else if (snapshot.hasError) {
            return Errordata(snapshot: snapshot);
          } else {
            return Success_comments(comments: snapshot.data!);
          }
        },
      ),
    );
  }
}
