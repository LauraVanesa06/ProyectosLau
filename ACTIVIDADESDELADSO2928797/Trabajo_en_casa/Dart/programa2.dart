
import 'dart:io';

/* void main() {
  print("Ingrese la cantidad total de tareas a programar");
  int count = int.parse(  stdin.readLineSync()!); 
  for (var i = 1; i <= count; i++) {
    print("Ingrese el valor de la tarea $i");
    int tarea = int.parse(stdin.readLineSync()!);
    var List = [tarea];
    

  }
  print( List);
} */

// PROGRAMA QUE LE PIDA AL USUARIO EL VALOR DE CADA TAREA EN ORDEN PARA LUEGO ORDENAR DE FORMA ASCENDENTE y selecciones las 3 más importante. 
void main(){
  List<double> numeros_i = [];
    var ingreso_num = '';
    print('Ingrese el valor de cada tarea (en orden de la primera a la última) y oprima "listo" para obtener las 3 mas importantes siendo 1 el valor más alto.'); 
  // Leer los números ingresados por el usuario

    while (ingreso_num != 'listo') {
    ingreso_num = stdin.readLineSync()!;
    
    if (ingreso_num != 'listo') {
      try {
        numeros_i.add(double.parse(ingreso_num));
      } catch (e) {
       print('Por favor, ingrese un número o la palabra "listo" para obtener el resultado.');
      }
    }
    }
    numeros_i.sort();
    var tresprimeros = numeros_i.take(3);
    print(tresprimeros);

}
    