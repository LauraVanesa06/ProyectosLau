import 'dart:io';

void main() {
  print("Ingrese la cantidad de aprnedices en este ambiente");
  int CantApren = int.parse(stdin.readLineSync()!);
  for (var i = 1; i < CantApren; i++) {

    print("Ingrese el nombre del aprendiz $i");
    String NomApren = stdin.readLineSync()!;
    
    var CantCaracteres = NomApren.length;
    var resta = CantCaracteres - 1;
    var cadena = NomApren.substring(resta, 1);


    print("Su nombre $NomApren tiene un total de $CantCaracteres y los últimos dos son $cadena");
  }
}