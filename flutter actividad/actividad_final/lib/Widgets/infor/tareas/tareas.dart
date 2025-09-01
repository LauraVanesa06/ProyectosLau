import 'package:flutter/material.dart';
import 'package:actividad_final/Widgets/infor/tareas/Success_Tarea.dart';
import 'package:actividad_final/Widgets/infor/tareas/Error_Tareas.dart';
import 'package:actividad_final/Widgets/infor/tareas/Loading_Tarea.dart';
import 'package:actividad_final/Widgets/infor/tareas/inicial_Tarea.dart';


class Tareas extends StatelessWidget {
  const Tareas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
      
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black
          
        )
      ),
      child: Success_Tareas()

    )
    );
  }
}

