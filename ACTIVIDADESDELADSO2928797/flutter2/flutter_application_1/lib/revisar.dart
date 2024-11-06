import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/widget/success.dart';
import 'models/post.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //clase abstracta que define pero no implementa.
  Future<Post> fetchdata() async {
  
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts/');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      return Post(response.body);       
    } else{
      throw Exception('Error al cargar datos');
    }
  }
 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //control espacio muestra las opciones que podemos utilizar
      //materialapp es otra clase en donde se instancia un objeto de tipo
      //linea lisa herencia y punteada es implement.
      // polimorfismo se define variable d eun tipo padre y el objeto es de otro tipo hijo 
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar( title: Text('Mi Hola mundo app version')),
        body:  FutureBuilder<Post>( //estado inicial cargando y luego del primer if  o sale bien o mal
          future: fetchdata(),
          builder: (BuildContext context, AsyncSnapshot<Post> snapshot){
            if (snapshot.connectionState == ConnectionState.waiting){
            // mientra se espera mostrar el indicador o circulito de "Cargando".
              return CircularProgressIndicator(); //poner el loading
            } else if(snapshot.hasError){
              //si hay un error, mostrar mensaje avisando la situación.
              return Text('Error: ${snapshot.error}'); // retorna ErrorDato
            } else{
              Post post = snapshot.data!;
              return Success(post:post,);
            }

            
          }
          
        )
      )
    );
  }
}

