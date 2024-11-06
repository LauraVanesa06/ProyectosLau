
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/estructura.dart';
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
          title: Text('',
           /* style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255)
            ), */ 
          ),
          backgroundColor: const Color.fromARGB(255, 191, 136, 250),
        ),
        body: PostSearchScreen(),
      ),
    );
  }
}

