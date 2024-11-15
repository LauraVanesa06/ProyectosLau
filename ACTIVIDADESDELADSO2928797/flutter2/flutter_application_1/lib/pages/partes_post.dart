import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/models/post.dart';
import 'package:flutter_application_1/widget/ErrorData.dart';
import 'package:flutter_application_1/widget/loading.dart';
import 'package:flutter_application_1/widget/success_post.dart';

class ResultPage extends StatelessWidget {
  final String postId;

  const ResultPage({super.key, required this.postId});

  Future<Post> fetchData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/$postId');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return Post(response.body);
    } else {
      throw Exception('Error al cargar datos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: const Color.fromARGB(255, 153, 57, 255),
      appBar:  AppBar(title: const Text('Resultados del Post'),
              backgroundColor: const Color.fromARGB(255, 153, 57, 255),
              ),
      body: FutureBuilder<Post>(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot<Post> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: loading());
          } else if (snapshot.hasError) {
            return Errordata(snapshot: snapshot);
          } else {
            return Success(post: snapshot.data!);
          }
        },
      ),
    );
  }
}
