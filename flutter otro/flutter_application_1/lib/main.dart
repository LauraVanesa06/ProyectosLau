import 'package:flutter/material.dart';
import 'Initial.dart';
void main() {
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
 return MaterialApp(
  home: Scaffold(
    body: Pagina2()
   
  )
 );
  }
  
}

class Pagina2 extends StatelessWidget {
  const Pagina2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Initial();
  }
}

