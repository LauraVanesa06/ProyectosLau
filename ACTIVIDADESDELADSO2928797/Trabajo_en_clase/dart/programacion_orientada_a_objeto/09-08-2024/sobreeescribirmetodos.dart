class Car{
String? placa = "dfg";
String? color = "rosa";
//sobreecribir el metodo de objetc para pomerle lo que yo desee.
@override
String toString(){
  return "la placa; ${this.placa}, el olor; ${this.color}";
}
}

void main(){
  Car car = new Car();
  // cuando le damos print de car es como si le pusieramos car.toString que está en objet.
  print(car.toString());
  // imostrar el valor d ela instancia.
}