
void main(){
 /*Logistics logistics = RoadLogistics();
  Transporte transporte = logistics.createTransport();
  transporte.deliver();*/

  Logistics logistics = SeaLogistics();
  Transporte transporte = logistics.createTransport();
  transporte.deliver();
}




abstract class Logistics {

 createTransport(); 
}

class RoadLogistics extends Logistics {
  Transporte? trasnporte;
  @override
  createTransport() {
   return trasnporte = Ship();
  }

}

class SeaLogistics extends Logistics {
  Transporte? transporte;
  @override
  createTransport() {
    return transporte = Truck();
    }
  
}

abstract class Transporte {
  deliver();
}

class Truck implements Transporte{
  @override
  deliver() {
    print("Entrega por Camion");
  }
  
}

class Ship implements Transporte {
  @override
  deliver() {
    print("Entrega por mar");
  }
  
}