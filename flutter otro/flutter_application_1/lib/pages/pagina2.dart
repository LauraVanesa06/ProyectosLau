import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Pagina2 extends StatefulWidget {
  const Pagina2({super.key});
  
  @override
State<Pagina2> createState() => _Pagina2State();
  
}

class _Pagina2State extends State<Pagina2> {

  List<dynamic> datos = [];
  bool cargando = true;
  
  @override
 void initState() {
    super.initState();
    fetchDatos();
 }
 
  Future<void> fetchDatos() async {
      final url = Uri.parse('https://jsonplaceholder.typicode.com/users');
      final response = await http.get(url);
      if (response.statusCode ==200) {
        setState(() {
          datos = jsonDecode(response.body);
          cargando = false;
        });
        
      } else {
        throw Exception('No se pudieron cargar los datos');
      }
  }
  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('Datos cargados')),

    body: cargando
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: datos.length,
            itemBuilder: (context, index) {
              final usuario = datos[index];

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: Text(usuario['name'] ?? 'Sin nombre'),
                    subtitle: Text(usuario['email'] ?? 'Sin email'),
                  ),
                  const Divider(),
                ],
              );
            },
          ),
  );
}

  }
