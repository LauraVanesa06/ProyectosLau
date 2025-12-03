abstract class Transporte{
  void deliver();
}

class Truck implements Transporte {
  @override
  deliver() {
   print("Entrega por tierra en una caja");
  }
}



abstract class Logistica {
  Transporte crearTransporte();
}


class RoadLogistics extends Logistica {
  @override
  Transporte crearTransporte() {
    return Truck();
  }
}



void main(){
  Logistica logistica = RoadLogistics();
  Transporte transporte = logistica.crearTransporte();
  transporte.deliver();
  
}