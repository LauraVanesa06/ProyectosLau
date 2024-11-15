import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/models/albumes.dart';
import 'package:flutter_application_1/widget/ErrorData.dart';
import 'package:flutter_application_1/widget/loading.dart';
import 'package:flutter_application_1/widget/success_albumes.dart';

class ResultPage extends StatelessWidget {
  final String IdAlbum;

  const ResultPage({super.key, required this.IdAlbum});

  Future<Albums> fetchData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/$IdAlbum');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return Albums(response.body);
    } else {
      throw Exception('Error al cargar datos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: const Color.fromARGB(255, 153, 57, 255),
      appBar:  AppBar(title: const Text('Resultados del album'),
              backgroundColor: const Color.fromARGB(255, 153, 57, 255),
              ),
      body: FutureBuilder<Albums>(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot<Albums> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: loading());
          } else if (snapshot.hasError) {
            return Errordata(snapshot: snapshot);
          } else {
            return Success(albums: snapshot.data!);
          }
        },
      ),
    );
  }
}
