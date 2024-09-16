import 'dart:io';

// libreria que te permite utilizar funciones para realizar operaciones matematicas.
import 'dart:math';

void main() {

// llamamos a la función Switch
estructuraSwitch();

}

// programamos la estructuraSwitch donde se realizan las operaciones.  
estructuraSwitch(){

  // definir  variables.
  int sumar = 1;
  int restar = 2;
  int dividir = 3;
  int multiplicar = 4;
  int promedio = 5;
  int potencia = 6;
  int raiz_cuadrada = 7;
  int porcentaje = 8;


  // Imprimir linea en consola para que el usuario ingrese el valor de la variable deseada.
  print('Si desea sumar elija $sumar.');
  print('Si desea restar elija $restar.' );
  print('Si desea dividir elija $dividir.');
  print('Si desea multiplicar elija $multiplicar.' );
  print('Si desea sacar promedio elija $promedio.' );
  print( 'Si desea resolver una potencia elija $potencia.' );
  print('Si desea sacar la raiz cuadrada elija $raiz_cuadrada.' );
  print('''Si desea sacar un porcentaje elija $porcentaje.
  
  
  Elija la opción deseada.''' );


  int operacion = int.parse(stdin.readLineSync()!);

  // ciclo para poner varios caso u opciones.
  switch (operacion) {

    case 1 : 

    // para que el usuario pueda ingresar tosos los números que desee, podriamos utilizar un for y un readline antes que le pida al usuario la cantidad de números que utilizará pero esta nos facilita el proceso y le vuelve el proceso menos tedioso al usuario pues así no tendrá que contrae de cierta forma cuantos números desea sumar o si se le olvida uno con el for le tocaría reiniciar para poder incluirlo, no obstante as{i el usuario podria utilizar todos los números que quiera hasta que ingrese calcular.
    List<double> numeros_i = [];
    var ingreso_num = '';

    print('Ingrese los números y oprima "calcular" para obtener la suma de los números ingresados.'); 
    // Leer los números ingresados por el usuario

    while (ingreso_num != 'calcular') {
      ingreso_num = stdin.readLineSync()!;
    
      if (ingreso_num != 'calcular') {
        try {
        numeros_i.add(double.parse(ingreso_num));
        } catch (e) {
          print('Por favor, ingrese un número o la palabra "calcular" para obtener su suma.');
        }
      }
    }

  // suma.
    if (numeros_i.isNotEmpty) {
      double suma = numeros_i.reduce((value, element) => value + element);
      print('La suma de los números que usted ingresó es: $suma. ');
    } else {
      print('No se han ingresado números para calcular la suma. ');
    }

  break;



  case 2 : 

    List<double> numeros_i = [];
    var ingreso_num = '';

    print('Ingrese los números y oprima "calcular" para obtener la resta de los números ingresados.'); 
    // Leer los números ingresados por el usuario

    while (ingreso_num != 'calcular') {
      ingreso_num = stdin.readLineSync()!;
      if (ingreso_num != 'calcular') {
        try {
          numeros_i.add(double.parse(ingreso_num));
        } catch (e) {
          print('Por favor, ingrese un número o la palabra "calcular" para obtener su resta.');
        }
      }
    }

  // suma.
    if (numeros_i.isNotEmpty) {
      double resta = numeros_i.reduce((value, element) => value - element);
      print('La resta de los números que usted ingresó es: $resta.');
    } else {
      print('No se han ingresado números para realizar la resta.');
    }

  break;


  case 3 :
    
    List<double> numeros_i = [];
    var ingreso_num = '';
    print('Ingrese los números y oprima "calcular" para obtener la división  de los números ingresados.'); 
    // Leer los números ingresados por el usuario

    while (ingreso_num != 'calcular') {
      ingreso_num = stdin.readLineSync()!;
      if (ingreso_num != 'calcular') {
        try {
          numeros_i.add(double.parse(ingreso_num));
        } catch (e) {
          print('Por favor, ingrese un número o la palabra "calcular" para obtener su división.');
        }
      }
    }

    //  división.
    if (numeros_i.isNotEmpty) {
      double division  = numeros_i.reduce((value, element) => value / element);
      print('La división  de los números que usted ingresó es: $division');
    } else {
      print('No se han ingresado números para realizar la división.');
    }
    
  break;

  case 4 : 
  
    List<double> numeros_i = [];
    var ingreso_num = '';
    print('Ingrese los números y oprima "calcular" para obtener la multiplicación  de los números ingresados.'); 
    // Leer los números ingresados por el usuario

    while (ingreso_num != 'calcular') {
      ingreso_num = stdin.readLineSync()!;
      if (ingreso_num != 'calcular') {
        try {
          numeros_i.add(double.parse(ingreso_num));
        } catch (e) {
          print('Por favor, ingrese un número o la palabra "calcular" para obtener su multiplicación.');
        }
      }
    }

    //  multiplicación.
    if (numeros_i.isNotEmpty) {
      double multiplicacion  = numeros_i.reduce((value, element) => value * element);
      print('La multiplicación  de los números que usted ingresó es: $multiplicacion. ');
    } else {
      print('No se han ingresado números para realizar la multiplicación.');
    }

      
  break;


  case 5 : 

    List<double> numeros_i = [];
    var ingreso_num = '';
    print('Ingrese los números y oprima "calcular" para obtener el promedio de sus números ingresados.'); 
    // Leer los números ingresados por el usuario
    while (ingreso_num != 'calcular') {
      ingreso_num = stdin.readLineSync()!;
      if (ingreso_num != 'calcular') {
        try {
          numeros_i.add(double.parse(ingreso_num));
        } catch (e) {
          print('Por favor, ingrese un número o la palabra "calcular" para obtener su promedio.');
        }
      }
    }

    // Calcular el promedio
    if (numeros_i.isNotEmpty) {
      double suma = numeros_i.reduce((value, element) => value + element);
      double promedio = suma / numeros_i.length;
      print("El promedio de los números que usted ingresó es: $promedio");
    } else {
      print("No se han ingresado números para calcular el promedio.");
    }

  break;


  case 6 : 
  
    print('Por favor, ingrese la base seguida del exponente con un solo espacio que los separe: ');

    var ingreso = stdin.readLineSync();
    if (ingreso != null) {
      List<String> partes = ingreso.split(' ');

      if (partes.length == 2) {
        try {
          int base = int.parse(partes[0]);
          int expo = int.parse(partes[1]);

          num resultado = pow(base, expo);
          print('El resultado de $base elevado a la $expo es: $resultado');
        } catch (e) {
          print('Por favor, ingrese un número válido para la base y el exponente. ');
        }
      } else {
        print('Por favor, ingrese la base y el exponente separados por un espacio. ');
      }
    } else {
      print('Entrada inválida. ');
    }

  break;


  case 7 : 
      
    print('Ingrese el valor al cual desea sacarle raiz cuadrada: ');
    double raiz_de = double.parse(stdin.readLineSync()!); 


    print( 'La raiz cuadra de $raiz_de es:'  ); 
    print(sqrt(raiz_de)) ;

  break;


  case 8 : 
    print('Ingrese el valor a sacar porcentaje: ');
    double numero1 = double.parse(stdin.readLineSync()!);

    print('Ingrese el porcentaje a sacar: ');
    double numero2 = double.parse(stdin.readLineSync()!);

    double porcentaje = numero1 * numero2; 
    double porcentaje2 = porcentaje / 100; 
    double total = numero1 - porcentaje2; 

    print('El $numero2 %  de $numero1 es $total');
    
  break;

  default:

    stdout.writeln('Opción no valida');
    
  }

}

