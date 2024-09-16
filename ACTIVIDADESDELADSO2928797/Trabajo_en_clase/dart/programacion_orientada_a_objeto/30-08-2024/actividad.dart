import 'dart:io';
void main(){
int sumar = 0;
//int dinero = 0;
    List<int> guardar = [];
  do{

    

    print("Ingrese por favor la cantidad a aportar");
    int dinero = int.parse(stdin.readLineSync()!);
     sumar = dinero + sumar;
    guardar.add(dinero);
    

  } while ( sumar < 100000);
  print("El total de dinero aportado fue de ${sumar} pesos.");
  print(guardar);
   
}