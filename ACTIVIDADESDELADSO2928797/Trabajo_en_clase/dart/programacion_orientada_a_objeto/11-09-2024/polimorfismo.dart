class Figura {

}

class Circulo extends Figura {}

class Cuadrado extends Figura {}

void main(){
  // una variable del tipo del padrre puede almacenar objetos de otro tipo o clase.
  Figura figura = Figura();

  if(figura is Cuadrado){
  //casting para acceder a metodos y figuras de la otra clase. 
    Cuadrado c = figura as Cuadrado;

  }


}