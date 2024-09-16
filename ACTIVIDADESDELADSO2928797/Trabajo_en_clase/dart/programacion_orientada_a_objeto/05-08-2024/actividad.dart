class Transporte{
  String marca = "Chevrolet";

}

class Terrestre extends Transporte{
  int? llantas;
}

class Auto extends Terrestre{
bool? aire;
}


class Moto extends Terrestre{
int? cascos;
}


class Aereo extends Transporte{
 int motores = 1;
}


class Avion{
   static void manual(){
    print("Este es el manual");
  }
}


void main(){
  Auto carro = new Auto();
  bool a = carro.aire = true;
  int llan = carro.llantas = 4;
  if(a == true && llan == 4){
    print("El objeto es un carro, si tiene aire acondicionado, es de marca ${carro.marca} y tiene ${carro.llantas} llantas" );
  } else if(a == false && llan == 4){
    print("El medio de transporte es un carro, no tiene aire acondicionado, es de marca ${carro.marca} y tiene ${carro.llantas} llantas" );
  }
  

  Moto moto = new Moto();
  int cas = moto.cascos = 2;
  String mar = moto.marca = "BMW";
  print("El objeto es una moto de marca ${mar} y tiene ${cas} cascos");
  
  
  print(Avion.manual);

}