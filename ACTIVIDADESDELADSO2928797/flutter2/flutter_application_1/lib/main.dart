
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/eleccion.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 191, 136, 250),
        appBar: AppBar(
          title: Text('BIENVENIDOO',
            style: TextStyle(
              color: Colors.black
            ),  
          ),
          backgroundColor: const Color.fromARGB(255, 191, 136, 250),
        ),
        body: Eleccion(),
      ),
    );
  }
}

