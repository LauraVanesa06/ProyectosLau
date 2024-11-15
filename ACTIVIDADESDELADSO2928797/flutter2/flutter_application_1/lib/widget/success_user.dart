import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user.dart';

class Success_user extends StatelessWidget {
  final User user;
  final Company company;
  final Geo geo;
  final Address address;

  const Success_user({super.key, required this.user, required this.geo, required this.address, required this.company });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ID: ${user.id}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Name: ${user.name}',
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 10),
            Text(
              'Username: ${user.username}',
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Email: ${user.email}',
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Address:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
          Text(
              'Street: ${address.street}',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 5),
            Text(
              'Suite: ${address.suite}',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 5),
            Text(
              'City: ${address.city}',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 5),
            Text(
              'Zipcode: ${address.zipcode}',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            const Text(
              'Coordinates:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              'Lat: ${geo.lat}',
              style: const TextStyle(fontSize: 14),
            ),

            const SizedBox(height: 5),
            Text(
              'Lng: ${geo.lng}',
              style: const TextStyle(fontSize: 14),
            ),

            const SizedBox(height: 10),
            Text(
              'Lat: ${user.website}',
              style: const TextStyle(fontSize: 14),
            ),
            
            const SizedBox(height: 10),
            Text(
              'Lat: ${user.phone}',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 10),
            Text(
              'Lat: ${company.name}',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 10),
            Text(
              'Lat: ${company.catchPhrase}',
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 10),
            Text(
              'Lat: ${company.bs}',
              style: const TextStyle(fontSize: 14),
            ),
          
          ],
        ),
      ),
    );
  }
}
