
import 'package:flutter/material.dart';

class Success_Tareas extends StatelessWidget {
  const Success_Tareas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "TAREAS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          Divider(),
          _buildTarea("Comprar", "Ir al Ara"),
          Divider(),
          _buildTarea("Tránsito", "Trámite"),
        ],
      ),
    );
  }

  Widget _buildTarea(String titulo, String detalle) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.white,
      ),
      child: ListTile(
        title: Text(titulo),
        subtitle: Text(detalle),
      ),
    );
  }
}
