import 'package:actividad_final/Widgets/infor/user/inicial.dart';
import 'package:actividad_final/Widgets/infor/user/loading.dart';
import 'package:flutter/material.dart';
import 'success.dart';
import 'error.dart';
class informacionUsu extends StatelessWidget {
  const informacionUsu({
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
      child: Success(),

    )
    );
  }
}

