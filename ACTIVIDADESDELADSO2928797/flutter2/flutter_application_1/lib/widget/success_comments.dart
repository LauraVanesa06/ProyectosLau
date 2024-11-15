import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/comments.dart';

class Success_comments extends StatelessWidget {
  final Comments comments;

  const Success_comments({super.key, required this.comments});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
       // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Text(
            'UserId: ${comments.userId}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'ID: ${comments.id}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Title: ${comments.name}',
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
          const SizedBox(height: 10),
          Text(
            'Body: ${comments.body}',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
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
