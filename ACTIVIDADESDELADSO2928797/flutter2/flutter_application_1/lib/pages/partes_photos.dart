import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/models/photos.dart';
import 'package:flutter_application_1/widget/ErrorData.dart';
import 'package:flutter_application_1/widget/loading.dart';
import 'package:flutter_application_1/widget/success_photos.dart';

class ResultPage extends StatelessWidget {
  final String photosId;

  const ResultPage({super.key, required this.photosId});

  Future<Photos> fetchData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/photos/$photosId');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return Photos(response.body);
    } else {
      throw Exception('Error al cargar datos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: const Color.fromARGB(255, 153, 57, 255),
      appBar:  AppBar(title: const Text('Resultados de su busquedad'),
              backgroundColor: const Color.fromARGB(255, 153, 57, 255),
              ),
      body: FutureBuilder<Photos>(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot<Photos> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: loading());
          } else if (snapshot.hasError) {
            return Errordata(snapshot: snapshot);
          } else {
            return Success(photos: snapshot.data!);
          }
        },
      ),
    );
  }
}
