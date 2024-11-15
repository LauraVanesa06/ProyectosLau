import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/partes_photos.dart'; 

class PhotosSearchScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 191, 136, 250),
      appBar: AppBar(title: const Text('Buscar photos'),
              backgroundColor: const Color.fromARGB(255, 191, 136, 250),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2RsX-rIbimpybKOHS7IcLGMK1wKxTxtTuGIcnQICvI96u5aV6xIyiHF8LSROQc7auGwM&usqp=CAU',
        ),
            TextField(  
              controller: _controller, // Controlador agregado
              keyboardType: TextInputType.number,
               decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                ),
                labelText: 'Ingrese el número de las photos',
                hintText: 'ID de las photos',
                labelStyle: TextStyle(
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String photosId = _controller.text;
                if (photosId.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(photosId: photosId),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Por favor, ingrese un ID de photos válido')),
                  );
                }
              },
              child: const Text('Buscar photos'),
            ),
          ],
        ),
      ),
    );
  }
}