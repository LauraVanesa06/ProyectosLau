
import 'dart:io';
void main(){
  calcular();
}

void calcular(){
  double resultado = 0;
  while (true) {
    print("Ingrese el primer número");
    double numero1 = double.parse(stdin.readLineSync()!);
  
    print("Ingrese el segundo número");
    double numero2 = double.parse(stdin.readLineSync()!);


    print("¿Qué opción desea reañizar?");
    print("1 :SUMAR ,2: RESTAR, 3 : MULTIPLICAR 4: DIVIDIR");

    int opcion = int.parse(stdin.readLineSync()!);

    if (opcion ==1) {
      resultado = sumar(numero1, numero2);
    } else if (opcion ==2){
      resultado = restar(numero1, numero2);

    } else if(opcion ==3){
      resultado = multiplicar(numero1, numero2);

    } else if(opcion ==4){
    resultado = dividir(numero1, numero2);

    } else {
      break;
    }
    print("El resultado es: $resultado");

  }
 
}

double sumar(double numerouno, double numerodos) {
  return numerouno + numerodos;
}

double restar(double numerouno, double numerodos) {
  return numerouno - numerodos;
}

double multiplicar(double numerouno, double numerodos) {
  return numerouno * numerodos;
}

double dividir(double numerouno, double numerodos) {
  if (numerodos != 0) {
    return numerouno / numerodos;
  } else {
    print("Error: No se puede dividir por cero");
    return double.nan;
  }
}