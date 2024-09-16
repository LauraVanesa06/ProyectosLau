import 'dart:io';

void main() {

  List<double> numeros_i = [];
  var ingreso_num = '';

  print('Ingrese los números y oprima "listo" para obtener los números organizados de menor a mayor y devuelva luego los primeros n números de la serie.');

  while (ingreso_num != 'listo') {
    ingreso_num = stdin.readLineSync()!;

    if(ingreso_num != 'listo') {
      try {
        numeros_i.add(double.parse(ingreso_num));
      } catch (e) {
              print('Por favor, ingrese un número o la palabra "listo" para obtener su resultado.');
      }
    }

  } 
  numeros_i.sort();
  print('Al organizar los númeroa quedaron así: $numeros_i');
  print('Ingrese la csntidad de núemros que desea que sean mostrados');
  int cant = int.parse(stdin.readLineSync()!);
  var eleccion = numeros_i.take(cant);
  print(eleccion);  

}