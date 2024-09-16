

// Herencia
class Person {
  String? nombre;
}

class Aprendizz extends Person{}

void main(){
  Aprendizz a = new Aprendizz();
  a.nombre = "Luis";
  print(a.nombre); 
}