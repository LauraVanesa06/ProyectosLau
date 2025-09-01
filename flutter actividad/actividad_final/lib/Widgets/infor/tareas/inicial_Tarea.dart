
import 'package:flutter/material.dart';

class Inicial_Tareas extends StatelessWidget {
  const Inicial_Tareas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
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
        
      
          Container(
            height: 50,
            width: 500,
             decoration: BoxDecoration(
        border: Border.all(color: Colors.black), 
        color: Colors.white,
      ),
          
            child: Column(
              children: [
                Text("..."),
                Text("... "),
              ],
            ),
          ),
        
          Divider(),
        
          Container(
            height: 50,
            width: 500,
              decoration: BoxDecoration(
        border: Border.all(color: Colors.black), 
        color: Colors.white,
      ),
           
            child: Column(
              children: [
                Text("..."),
                Text("..."),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

