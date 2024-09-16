
//flecha punta de rombo y señala a la clase que recibe
// se necesita un metodotipo setter y un atributo privado.
class Person{}
class Car{
  // en dart se pone el guion bajo para definir que el atributo es privado.
  Person? _propietario;

  void add_person(Person p){
    this. _propietario;
  }

}

void main() {
  Person laura =  Person();
  Car carro =  Car(); 
  carro.add_person(laura); 
}
