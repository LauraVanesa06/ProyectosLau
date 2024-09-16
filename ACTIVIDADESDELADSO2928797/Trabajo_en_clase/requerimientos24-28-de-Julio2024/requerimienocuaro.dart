import 'dart:io';
void main() {

//  print('Ingrese el nombre del usuario.'); 
  //int nom_usuario = int.parse(stdin.readLineSync()!);

 // print('Ingrese documento del usuario.'); 
 // int documento = int.parse(stdin.readLineSync()!);

 // print('Ingrese la dirección del usuario.'); 
 // int direccion = int.parse(stdin.readLineSync()!);

      List<String> nom_i = [];
    var ingreso_nom = '';

          List<String> docu_i = [];
    var ingresodocu= '';

          List<String> direcc = [];
    var ingreso_direcc = '';

    print('Ingrese  y oprima "sus nombres, documeno y direccion ver" para obtener la info  ingresada.'); 


    while (ingreso_nom != 'ver' && ingresodocu != 'ver' && ingreso_direcc != 'ver'  ) {
      ingreso_nom  = stdin.readLineSync()!;
      ingresodocu  = stdin.readLineSync()!;
      ingreso_direcc  = stdin.readLineSync()!;    

      if (ingreso_nom != 'ver' && ingresodocu != 'ver' && ingreso_direcc != 'ver' ) {
        try {
        nom_i.add((ingreso_nom));
        nom_i.add((ingresodocu));
        nom_i.add((ingreso_direcc));

        } catch (e) {
          print('Ingrese  y oprima "sus nombres, documeno y direccion ver" para obtener la info  ingresada.'); 
        }
      }
    }
    int cancarac = nom_i.length;
    
    for (var i = 1; i <= cancarac; i++) {

         print(nom_i.take(i));
         print(' ');
          print(docu_i.take(i));
           print(direcc.take(i));
 

  
    }
}
 