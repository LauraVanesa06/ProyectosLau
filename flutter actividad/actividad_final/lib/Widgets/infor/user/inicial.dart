import 'package:flutter/material.dart';

class Inicial extends StatelessWidget {
  const Inicial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hola señor(a) ...",
          style: TextStyle(
          height: 3.0,)),
        
        Text(" Contacto: ...",
         style: TextStyle(
          height: 2.0,),
     
        ),
        Text("Saldo: ...")
        
      ],
    );
  }
}