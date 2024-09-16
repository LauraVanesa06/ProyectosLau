import 'dart:io';

void main() {

  int cont = 0;
  int acum = 0;
  int cont2 =0;
  int acum2 =0;

  print ('ingrese el numero de aprendices de ese ambiente');
  int? Cant_Apren = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= Cant_Apren; i++ ){

    print ('ingrese la cantidad aportada por el aprendiz');
    int? Cant_Apor = int.parse(stdin.readLineSync()!);

    if (Cant_Apor >= 5000){

       cont = cont +1;
       acum = acum + Cant_Apor;

    }else{

       cont2 = cont2 +1;
       acum2 = acum2 + Cant_Apor;

    }
  }
  int cantidad = acum + acum2;
  double promedio = cantidad / Cant_Apren;
  double promedio2 = acum / cont;
  double promedio3 = acum2 / cont2;

  print('la cantidad total de aportes es de $cantidad y el promedio es $promedio');
  
  print('los que aportaron 5000 o mas = $cont');
  print('total = $acum');
  print('promedio = $promedio2');

  print('los que aportaron menos de 5000 = $cont2');
  print('total = $acum2');
  print('promedio = $promedio3');

}