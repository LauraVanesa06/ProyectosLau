 import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/photos.dart';

class Success extends StatelessWidget {
  final Photos photos;

  const Success({super.key, required  this.photos});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
       // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         
          Text(
            'UserId: ${photos.albumId}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'ID: ${photos.id}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Title: ${photos.title}',
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
          const SizedBox(height: 10),
          Text(
            'Url: ${photos.url}',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'thumbnailUrl: ${photos.thumbnailUrl}',
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