import 'package:flutter/material.dart';

class loading extends StatelessWidget {


  const loading({
    super.key,  
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircularProgressIndicator(strokeWidth: 10.0, strokeAlign: 5.0, color: Color(0x5A014166)),
          SizedBox(height: 50.0),
          Text('...', style: TextStyle(
              fontSize: 50, // Tamaño del texto en puntos
              fontWeight: FontWeight.bold,),
          )
        ],         
      ),
    );
  }
}
