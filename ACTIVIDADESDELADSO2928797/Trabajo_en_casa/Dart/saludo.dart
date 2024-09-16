/*
Función de saludo:
Escribe una función llamada saludar que tome un nombre como parámetro y devuelva un mensaje de saludo. Por ejemplo, si se le pasa "Juan", debería devolver "¡Hola, Juan!".
*/
import 'dart:io';
void main (){
  List <String?> saludar = [];
//String ingresonom = ''; 
print('Ingrese el nombre de la persona a saluda.');
 String? ingresonom = stdin.readLineSync();

//while (ingresonom != 'ya') {
  
//}

// if (ingresonom != 'listo') {
  //  try { 
   saludar.add((ingresonom));

   print(' Hola señor(a) $saludar');
     //   } 
      //}
          
}
