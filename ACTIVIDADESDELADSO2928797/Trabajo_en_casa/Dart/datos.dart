void main(){

/*  Cadenas de texto

Podemos utilizar comillas dobles “ o comillas simples ‘ para asignar una cadena de texto.
*/
String saludo = "Hello word in DART";
String saludo2 = 'Hola mundo en Dart';

print(saludo);
print(saludo2);


// También podemos hacer interpolación (imprimir el valor de una variable junto a un texto) de cadenas, basta con agregar dentro de las comillas el signo de $ y el nombre de cualquier variable.
String saludoo = "Hola mundo en Dart";
print(saludoo);
String saludo3 = "$saludoo desde otra variable";
print(saludo3);

// Output: Hola mundo en Dart desde otra variable
//Podemos concatenar de diferentes maneras, podemos utilizar el símbolo de + para unir dos cadenas o basta con tener un espacio o un salto de línea entre el par de comillas:

String concatenar = "Hola mundo" + " a todos";
  print(concatenar);

String concatenar2 = "Hola mundo" " a todos";
  print(concatenar2);

String concatenar3 = "Hola mundo" 
                 " a todos";
  print(concatenar3);
// Output: Hola mundo a todos

// Si queremos utilizar saltos de línea podemos utilizar las triples comillas simples ‘‘‘ o dobles “ “ “.

String saludo_salto_linea = '''Saludo con saltos de linea ...


... hasta aquí ''';

print( saludo_salto_linea );
// Output: Saludo con saltos de linea ...


//... hasta aquí
}