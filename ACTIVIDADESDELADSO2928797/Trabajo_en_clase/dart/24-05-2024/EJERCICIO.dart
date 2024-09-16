import 'dart:io';

void main(){
  print ('Ingrese su nombre, por favor:');
  String? n = stdin.readLineSync();

  print ('Ingrese su apellido, por favor:');
  String? ap = stdin.readLineSync();

  print ('Ingrese el primer valor, por favor:');
  int n1 = int.parse(stdin.readLineSync()!);
  
  print ('Ingrese el segundo valor, por favor:');
  int n2 = int.parse(stdin.readLineSync()!);

  print ('Ingrese el tercer valor, por favor:');
  int n3 = int.parse(stdin.readLineSync()!);

  int sum = n1 + n2 + n3;
  var prom = sum / 3;

  print( "Señor(a) $n $ap");
  print("Su promedio es igual a $prom"); 

}