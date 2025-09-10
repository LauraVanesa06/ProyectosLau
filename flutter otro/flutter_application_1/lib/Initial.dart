import 'package:flutter/material.dart';
import 'pages/pagina2.dart';
class Initial extends StatelessWidget {
  const Initial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
      width: 500,
      height: 500,
      color: const Color.fromARGB(255, 216, 173, 247),
    
      child: Column(
        
        children:[
            const SizedBox(height: 70,),
         const Text("Documento"),
        const  SizedBox(height: 20,),
         const   FractionallySizedBox(
            widthFactor: 0.7, 
          child:  TextField(
            
            decoration: 
            
             InputDecoration(
              
              border: OutlineInputBorder(),
            )
          ),
            ),
        const  SizedBox(height: 70,),
          const Text("Nombre"),
          const SizedBox(height: 20,),
    
           const  FractionallySizedBox(
      widthFactor: 0.7, 
          child:  TextField(decoration: InputDecoration(
              border: OutlineInputBorder(),
              
            ))),
         const SizedBox(height: 70,),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Pagina2()),
    );
            },
            child: const Text(
              'Guardar',
              style: TextStyle(fontSize: 20),
            ),
          ),     
        ],
      )
    )
    
    
    );
  }
}