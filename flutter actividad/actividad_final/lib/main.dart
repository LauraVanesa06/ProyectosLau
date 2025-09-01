import 'package:flutter/material.dart';
import 'Widgets/infor/user/informacionUsu.dart';
import 'Widgets/infor/tareas/tareas.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Actividad evaluativa de conocimientos uno",
        home: Scaffold(
          body: Column(
            children: [
              informacionUsu(),
             
              Divider(
                height: 20,
                
              ),
              
             Tareas(),
          ],
        ),
      ),
    );
  }
}
