import 'dart:io';
import 'clasecolaborador.dart'; 
import 'claserecolecta.dart';

void main(){
  
  Recolecta recolecta = Recolecta(50000,0);
 // double mo = double.parse(stdin.readLineSync()!);
  // double ba = double.parse(stdin.readLineSync()!);
  while(!recolecta.finalizada()){
    print("Ingrese nombre");
    String nombre = stdin.readLineSync()!;

    print("Ingrese aporte");
    double apor = double.parse(stdin.readLineSync()!);

    print("Ingrese tipo");
    int tipo = int.parse(stdin.readLineSync()!);

    Colaborador col =  Colaborador(nombre, apor, tipo);
    recolecta.addColaborador(col);
    //print(col.toString());
  }

  print("Los colaboradores fueron: ${recolecta.getcol()}");
  print("La meta era de: ${recolecta.getbalance()}");
  print("El recaudo de las personas que aportaron mas de 10.000 es de: ${recolecta.recaudoGenerosos()} y fueron ${recolecta.generosos()} para obtener un promedio de ${recolecta.promedioGenerosos()}");
  //recolecta.recaudoGenerosos(); 
  //  print("El promedio deb los que aportaron mas de 10.000 es de: ");
   // recolecta.promedioGenerosos();
  print("Los instructores que aportaron fueron: ${recolecta.recaudoPorTipo(2)}");
  print("Los aprendices que aportaron fueron: ${recolecta.recaudoPorTipo(1)}");
  print("Listo"); 
  //print(col.toString());
  //print(lau._colaboradores);

}