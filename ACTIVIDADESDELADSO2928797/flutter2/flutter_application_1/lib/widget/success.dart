import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/post.dart';

class Success extends StatelessWidget {
  final Post post;

  const Success({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
       // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Text(
            'UserId: ${post.userId}',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'ID: ${post.id}',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Title: ${post.title}',
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          const SizedBox(height: 10),
          Text(
            'Body: ${post.body}',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          // Descomenta la imagen si deseas mostrarla
          // Image.network(
          //   'https://media.giphy.com/media/65LrvAMGU650TvPgs5/giphy.gif',
          //   width: 300.0,
          // ),
        ],
      ),
    );
  }
}
