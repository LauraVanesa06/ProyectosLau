import 'dart:io';

void main(){
  
  print('Ingrese la cantidad de nombres a separar');
  int cant = int.parse(stdin.readLineSync()!);
  for (var i = 1; i < cant; i++) {
    print('Ingrese el nombre ' );
    String nombre = stdin.readLineSync()!;
    int separar = nombre.length;
    for (var i = 1 ; i < separar; i++) {
      var nom = nombre.substring(i , 1);
      int sumar = 1 + i;
      print(nom); 
    }

  } 
}