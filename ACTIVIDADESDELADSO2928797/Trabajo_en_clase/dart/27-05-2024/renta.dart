
import 'dart:io';

void main() {

  print("Por favor ingresar su nombre y apellido.");
  String? nombre_usuario = stdin.readLineSync();

  print("Por favor ingresar el valor de su declaración de renta en pesos Colombianos.");
  double valor_pagar = double.parse(stdin.readLineSync()!);


  if(valor_pagar >= 0 &&  valor_pagar<=10) {
    //aplicar el 20%

    double descuento = valor_pagar * 20;
    double descuento1 = descuento / 100;   
    double total = valor_pagar - descuento1;

    print(''' Señor(a) $nombre_usuario, debido a su monto en la declaración de renta se le ha dado un descuento del 20% por ende se le descontaran  $descuento1 de su total a pagar.

    Su declaración de renta le queda en $total pesos colombianos.
    '''); 
  } else if(valor_pagar >= 11 &&              valor_pagar<=100) {
    //10%

    double descuento = valor_pagar * 10;
    double descuento1 = descuento / 100;   
    double total = valor_pagar - descuento1;

    print(''' Señor(a) $nombre_usuario, debido a su monto en la declaración de renta se le ha dado un descuento del 20% por ende se le descontaran  $descuento1 de su total a pagar.

    Su declaración de renta le queda en $total pesos colombianos. 
    '''); 
  } else if(valor_pagar >= 101 &&  valor_pagar<=1000) {
  //5%

    double descuento = valor_pagar * 5;
    double descuento1 = descuento / 100;   
    double total = valor_pagar - descuento1;

    print(''' Señor(a) $nombre_usuario, debido a su monto en la declaración de renta se le ha dado un descuento del 20% por ende se le descontaran  $descuento1 de su total a pagar.

    Su declaración de renta le queda en $total pesos colombianos.
    '''); 
  } else if(  valor_pagar<1000) {

    //1%

    double descuento = valor_pagar * 1;
    double descuento1 = descuento / 100;   
    double total = valor_pagar - descuento1;

    print(''' Señor(a) $nombre_usuario, debido a su monto en la declaración de renta se le ha dado un descuento del 20% por ende se le descontaran  $descuento1 de su total a pagar.

    Su declaración de renta le queda en $total pesos colombianos.
    '''); 
  } else {

    print('Su valor ha sido incorrecto, por favor ingrese el valor real, en pesos Colombianos, sin punto ni coma para poder proceder.');

  }
 }

