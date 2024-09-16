// cuando se crea una clase por defecto tiene un constructor vacio. 
class Car{
  String? placa;
  String? color; 
  // con los corchetes se puede elegir el orden de los prametros a la hora de la funcion principal definirlas. Constructor nombrado con corchete, sin corchete es compacto y posicionado.
  Car({this.placa, this.color});

}
void main() {
  // con control espacio le sale los parametros que se deben colocar en ese lugar.
  Car carro = new Car(color: "Rojo", placa:"fghjd");
  carro.color; }
// en dart el guion bajo significa que es privado dicho atributo.

//sobreescribir metodos.

// clase abstracta es cuando se crea una clase  y luego deifne los atributos en el diagrama se pone la flecha y linea punteada
class Figura{}
class Cuadrado implements Figura{}
