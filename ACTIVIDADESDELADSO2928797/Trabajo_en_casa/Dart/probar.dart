
import 'dart:io';

void main() {

  print('Ingrese la cantidad de aprendices en el ambiente. '); 
  int CantEst = int.parse(stdin.readLineSync()!);

  int a = 0;
  int total = 0;
  int  b = 0;
  double total2 = 0;


  for (var i = 1; i <= CantEst; i++) {

    print('Ingrese la cantidad de dinero aportado por el estudiante $i. ');
    int aporte = int.parse(stdin.readLineSync()!);

    if (aporte >= 5000) {

      a = a + 1;
      total = total + aporte;
      
    } else {

      b = b +1;
      total2 = total2 + aporte; 

    }
      
  }


    double promno  = total2 / b;
    double promsi = total / a;
    double promGeneral = total + total2;
    double promGeneral2 = promGeneral / CantEst;
  

  print('La cantidad de aprendices que aportaron más de 5,000 fueron $a. '); 
  print('La cantidad de aprendices que aportaron menos de 5,000 fueron $b. ');


  print('El total de dinero recaudado por los aprendices que dieron menos de 5,000 fue de $total2 y el promedio fue de $promno. ');
  print('El total de dinero recaudado por los aprendices que dieron mas de 5,000 fue de $total  y el promedio fue de $promsi. ');
  print('La cantidad de dinero recaudada al final fue de $promGeneral y el promedio de este fue de $promGeneral2. ');



}