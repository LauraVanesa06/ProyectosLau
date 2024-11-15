import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/post.dart';

class Errordata extends StatelessWidget {
  final AsyncSnapshot snapshot;

  Errordata({super.key,  required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('ERROR: INFO NO ENCONTRADA'),
                  Text('${snapshot.error}'),
                  const SizedBox(height: 10),
                  
                ],
             
              
     // Image.network(
       // 'https://media.giphy.com/media/65LrvAMGU650TvPgs5/giphy.gif?raw=true',
        //width: 300.0,
        //sucess todo bien
      //),

     // Text(post.body!),
      //Text(post.title!),
/*

      const Row(children: [
        Icon(Icons.favorite),
        Icon(Icons.favorite),
      ])
*/
      ),
    );
  }
}
