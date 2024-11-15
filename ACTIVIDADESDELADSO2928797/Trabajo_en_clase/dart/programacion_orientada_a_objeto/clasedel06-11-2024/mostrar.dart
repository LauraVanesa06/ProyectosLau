void main(){



}

abstract class Logistics {
  createTransport();
}

class planDelivery {
//  Transporte t = createTransport();
}

class RoadLogistics extends Logistics{
  Transporte? transporte;
  @override
  createTransport() {
    return transporte = Truck();
  }
  
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
  deliver() {
    print("Entrega por tierra en una caja");
  }
  
}

class Ship implements Transporte {
  @override
  deliver() {
    print("Entrega por mar en un contenedor");
  }
  
}
