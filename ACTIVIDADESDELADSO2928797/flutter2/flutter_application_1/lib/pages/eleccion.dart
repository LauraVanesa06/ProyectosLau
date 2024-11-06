import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/estructura_post.dart';
import 'package:flutter_application_1/pages/estructura_user.dart';
import 'package:flutter_application_1/pages/estructura_photos.dart';
import 'package:flutter_application_1/pages/estructura_comentarios.dart';
import 'package:flutter_application_1/pages/estructura_todos.dart';
import 'package:flutter_application_1/pages/estructura_albumen.dart';


void main() => runApp(const CardExampleApp());

class CardExampleApp extends StatelessWidget {
  const CardExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('BIENVENIDO'),
        backgroundColor: const Color.fromARGB(255, 191, 136, 250),
        ),
        body: const Eleccion(),
      ),
    );
  }
}

class Eleccion extends StatelessWidget {
  const Eleccion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('                                                                        A LA INTERFAZ'),         
        backgroundColor: const Color.fromARGB(255, 191, 136, 250),
      ),
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Expanded(
                child: Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      // Navega a la segunda página
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PostSearchScreen()),
                      );
                    },
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.info, size: 40),
                          title: Text('Información de los post'),
                          subtitle: Text('Detalles sobre los post.'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      // Navega a la segunda página
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UserSearchScreen()),
                      );
                    },
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.info, size: 40),
                          title: Text('Información de los Usuarios'),
                          subtitle: Text('Detalles sobre los Usuarios.'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      // Navega a la segunda página
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PostSearchScreen()),
                      );
                    },
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.info, size: 40),
                          title: Text('Fotos'),
                          subtitle: Text('Detalles de las fotos.'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      // Navega a la segunda página
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PostSearchScreen()),
                      );
                    },
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.info, size: 40),
                          title: Text('Álbumes'),
                          subtitle: Text('Detalles sobre los álbumen.'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      // Navega a la segunda página
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PostSearchScreen()),
                      );
                    },
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.info, size: 40),
                          title: Text('Todos'),
                          subtitle: Text('Detalles sobre "todos".'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: InkWell(
                    onTap: () {
                      // Navega a la segunda página
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PostSearchScreen()),
                      );
                    },
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.info, size: 40),
                          title: Text('COMENTARIOS'),
                          subtitle: Text('Detalles de los comentarios.'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}

// Clase de la segunda página
class Partes extends StatelessWidget {
  const Partes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Página de Partes')),
      body: const Center(
        child: Text('Detalles de la parte seleccionada'),
      ),
    );
  }
}
