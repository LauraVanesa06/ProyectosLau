import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/partes_post.dart'; // Asegúrate de que la página esté importada

class CommentsSearchScreen extends StatelessWidget {
  final TextEditingController _controller = 
  
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 191, 136, 250),
      appBar: AppBar(title: const Text('Buscar'),
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
                labelText: 'Ingrese el número del comentario',
                hintText: 'ID del comentario',
                labelStyle: TextStyle(
                  color: Colors.black,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String postId = _controller.text;
                if (postId.isNotEmpty) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(postId: postId),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Por favor, ingrese un ID de comentario válido')),
                  );
                }
              },
              child: const Text('Buscar comentario'),
            ),
          ],
        ),
      ),
    );
  }
}
