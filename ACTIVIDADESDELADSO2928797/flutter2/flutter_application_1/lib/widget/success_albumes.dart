import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/albumes.dart';

class Success extends StatelessWidget {
  final Albums albums;

  const Success({super.key, required this.albums});
  
  @override
  Widget build(BuildContext context) {
  return Center(
    child: Column(
      children: [
        Text(
            'UserId: ${albums.userId}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'id: ${albums.id}',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(
            'Title: ${albums.title}',
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
