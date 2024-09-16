import 'dart:io';

void main() {
  print("Ingrese la cantidad de aprnedices en este ambiente");
  int CantApren = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <= CantApren; i++) {

    print("Ingrese el nombre del aprendiz $i");
    String NomApren = stdin.readLineSync()!;
    var Cant = NomApren.length;
    var Acum = '';
    var l = 1;
      for ( l <= Cant; l <= 1; l++) {
       var alreves = NomApren.substring(l, 1); 
       Acum = Acum + alreves;

      }
      print( Acum);
    
  }
} 