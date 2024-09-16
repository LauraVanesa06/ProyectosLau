
import 'dart:math';
import 'dart:core';

void main() {

  /* 
  Esta función crea una nueva lista después de transformar cada elemento de la lista anterior. Esta función recibe como parámetro una función anónima. 
  Aquí la función anónima que tiene un número como parámetro y hemos multiplicado este número por dos.
    */
  var list = List.of({1,2,3,4});
  var mappedList = list.map( (number) => number *4);
  print(mappedList);


  /* 
  Ordenar de forma ascendente una lista.
  */
  var numeros = List.of({15, 58, 24, 46, 7, 5, 25, 2});
  numeros.sort();
  print(numeros);


  /*
  genra 5 números 
  Dentro de la función anónima obtenemos un número y lo multiplicamos por un número aleatorio entre 0 y 50.
  */
  var generatedList = List.generate(5, (number) => number * Random().nextInt(50));
  print(generatedList);


  /* Esta función simplemente toma los primeros elementos de la lista. Puede ser útil cuando tengas una lista de competidores y quieras solo obtener el top tres de todos los competidores.
  */
  var lis = List.from([1,2,3,4,5,6]);
  var topThreeList = lis.take(3);
  print(topThreeList);


  /*
  Esta función es el opuesto de la función Take, está ignora la cantidad de elementos que se le indique. En caso de que se le indiquen 3 elementos obviara los primeros tres elementos de la lista.
  */
  var lista = List.from([1,2,3,4,5,6]);
  var skipList = lista.skip(3);
  print(skipList); 
  

  /*
  Esta función es una de mis favoritas ya que nos ayuda a crear una lista con los elementos que cumplan con el predicado que se le pasa como parámetro. Esto quiere decir que solo los elementos que cumplan con la condición dada se agregaran a la lista.
  Digamos que tenemos una lista aleatoria de números en caso de que queramos una lista con solo numeros pares bastará realizar esa comprobación en la función anónima. Veamos el siguiente ejemplo.
  */ 
  /* En este ejemplo tomamos solamente los números pares de la lista randomNumberList, luego convertimos esos números a una Lista y finalmente usamos el operador de cascada .. para ordenar la lista de forma ascendente. */
  var randomNumbers = List.of({14, 51, 23, 45, 6, 3, 22, 1});
  var evenNumbers = randomNumbers.where((number) => number.isEven);
  evenNumbers = evenNumbers.toList()..sort();
  print(evenNumbers);

  }

