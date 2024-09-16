import 'dart:io';


void main() {

  print('Ingrese la cantidad de estudiantes de su curso'); 
  double num_estudiantes = double.parse(stdin.readLineSync()!);

  for (var i = 1; i <= num_estudiantes; i++) {

    print('Ingrese el nombre del estudiante $i'); 
    String? nombre = stdin.readLineSync(); 

    print('Ingrese la primera nota de $nombre');
    double n1 = double.parse(stdin.readLineSync()!);

    print('Ingrese la segunda nota de $nombre');
    double n2 = double.parse(stdin.readLineSync()!);

    print('Ingrese la tercera nota de $nombre');
    double n3 = double.parse(stdin.readLineSync()!);

    if (n1 >= 1 && n1 <=10 && n2 >= 1 && n2 <=10 && n3 >= 1 && n3 <=10) {
      double suma = n1 + n2 + n3 ; 
      double promedio = suma / 3; 

      print('El estudiante $nombre tuvo un promedio de $promedio por ende: ');

      if ( promedio > 6) {
        print(' Aprovó este curso con exito');
      } else if ( promedio <= 6) {
      print('Es insuficiente para aprovar.');

      }
    } else {
      print('''Ha ingresado el valor de una nota mal
      
      Ingrese una nota entre 1-10
      ''');
    }
  }
}