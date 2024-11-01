import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/post.dart';

class Success extends StatelessWidget {
      Post post;

  Success({super.key,  required this.post});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('UserId: ${post.userId}'),
                  const SizedBox(height: 10),
                  Text('ID: ${post.id}'),
                  const SizedBox(height: 10),
                  Text('Title: ${post.title}'),
                  const SizedBox(height: 10),
                  Text('Body: ${post.body}'),
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
