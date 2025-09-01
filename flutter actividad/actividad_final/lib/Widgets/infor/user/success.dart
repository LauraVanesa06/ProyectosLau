import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  const Success({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hola, Carlos",
          style: TextStyle(
          height: 3.0,)),
        
        Text("Contacto: lvanesadelahoz@gmail.com",
         style: TextStyle(
          height: 2.0,),
     
        ),
        Text("1200")
        
      ],
    );
  }
}