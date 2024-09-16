import 'dart:io';

void main() {
  print('Ingrese la canCidad de códigos a generar');
  int cantcodigos = int.parse(stdin.readLineSync()!);
  //int i = 0;

  for( int i= 1; i <= cantcodigos; i++ ) {
   //  int dos = i + 1;
    print('Ingrese el nombre del usuario.'); 
    String nom_usuario = stdin.readLineSync()!;

    print('Ingrese la placa del vehiculo usuario.'); 
    String placa_usuario = stdin.readLineSync()!;

    print('Ingrese el municipio del usuario.'); 
    String municipio = stdin.readLineSync()!;

    var muni = municipio.substring(1, 3 );
    var nombre= nom_usuario.substring((municipio.length ) -1, 2 );
    var placa = placa_usuario.substring((placa_usuario.length) - 2, 3 );
    var codigo = muni  + nombre + placa;
    print('su codigo es ' + codigo);





  }
    
}
