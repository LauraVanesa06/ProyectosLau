import 'dart:io';
void main() {
 
  print('Ingrese el radio del círculo, por favor:');
  String? input = stdin.readLineSync(); // Lee el radio como una cadena 

  if (input != null) {
    double radio = double.tryParse(input) ?? 0; // Intenta convertir la entrada a un double

    double area = calcularAreaCirculo(radio); // Calcula el área del círculo

    print('El área del círculo con radio $radio es: $area');
  } else {
    print('No se proporcionó un valor válido para el radio del círculo.');
  }
}

  double calcularAreaCirculo(double radio) {
  const double pi = 3.14159;
  return pi * radio * radio; // Fórmula para calcular el área del círculo
  }
