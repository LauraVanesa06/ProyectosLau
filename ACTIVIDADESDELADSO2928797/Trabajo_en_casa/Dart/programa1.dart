/*import 'dart:io';
void main(){
int punto = 0;
print('Ingrese la cantidad de participantes ');
int participantes = int.parse(stdin.readLineSync()!); 

for (var i = 0; i <= participantes; i++) {
  print('Ingrese la puntuacion del participante $i');
  int puntos = int.parse(stdin.readLineSync()!); 
  punto = punto; 
  var list = List.from([ puntos]);
  list.sort();
var topThreeList = list.take(3);
print(topThreeList);

}*/ 
import 'dart:io';
void main(){

print('Ingrese la puntuacion de Maria');
int maria = int.parse(stdin.readLineSync()!); 

print('Ingrese la puntuacion de Lucia');
int lucia = int.parse(stdin.readLineSync()!); 
print('Ingrese la puntuacion de Ana');
int ana = int.parse(stdin.readLineSync()!); 
print('Ingrese la puntuacion de lola');
int lola = int.parse(stdin.readLineSync()!); 


var list = List.from([lucia, maria, ana, lola]);

list.sort();
print(list);

print('Al organizar los puntajes obtenidos por los competidores, la clasificación de los 3 mejores puestos ha quedado así:'); 
  var topThreeList = list.take(3);
print(topThreeList);

}


