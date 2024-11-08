

 void main() {
  Logistics logistics = RoadLogistics();
  Transporte transporte = Logistics.createTransport();
  transporte.logistics();
}


abstract class Logistics {
  planDelivery();
  createTransport();
  
}

class RoadLogistics extends Logistics {
  
  Transporte? transporte;
  
  @override
  createTransport() {
    return transporte = Truck();
  }
/*
  @override
  planDelivery() {
    createTransport();
    return transporte.deliver() ;  
  }*/
  //return new Truck; 
  
} 

class SeaLogistics extends Logistics {
  Transporte? transporte;
  
  @override
  createTransport() {
    return transporte = Ship();
  }
}

abstract class Transporte {
   deliver();

}

class Truck implements Transporte {
   @override
  void deliver(){
    print("pinta boton Truck");
  }
}

class Ship implements Transporte {
   @override
  void deliver(){
    print("pinta boton Ship");
  }
}