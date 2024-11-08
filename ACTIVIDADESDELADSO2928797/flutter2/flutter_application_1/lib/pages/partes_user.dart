import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/widget/ErrorData.dart';
import 'package:flutter_application_1/widget/loading.dart';
import 'package:flutter_application_1/widget/success_user.dart';


class ResultPage extends StatelessWidget {
  final String? userId;
  final dynamic geo;
  final dynamic address;
  final dynamic company;
 // final Geo geo;

  const ResultPage({super.key,  this.userId, required this.geo, required this.address, required this.company});

  Future<User> fetchData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/users/$userId');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      return User(response.body);
    } else {
      throw Exception('Error al cargar datos');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
              backgroundColor: const Color.fromARGB(255, 153, 57, 255),
      appBar: AppBar(title: const Text('Resultados del User'),
              backgroundColor: const Color.fromARGB(255, 153, 57, 255),
              ),
      body: FutureBuilder<User>(
        future: fetchData(),
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: loading());
          } else if (snapshot.hasError) {
            return Errordata(snapshot: snapshot);
          } else {
           
            return Success_user(user: snapshot.data!, geo: Geo(geo), address: Address(address), company: Company(company),);
          }
        },
      ),
    ); 
  }
}
