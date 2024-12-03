void main(){
Logistica logistica = RoadLogistics();
Transport transport = logistica.createTransport();
transport.deliver();
}

abstract class  Transport {
  void deliver();
  
}

class Truck implements Transport {
  @override
  void deliver() {
    print('Entregz por tierra en una caja');
  }

  
}

class Ship implements Transport {
  @override
  void deliver() {
    print('Entrega por mar en un contenedor');
  }
  
}

abstract class Logistica {

  Transport createTransport();
  
}

class RoadLogistics implements Logistica {
  @override
  Transport createTransport() {
    return Truck();
  }
  
}

class SeaLogistics implements Logistica {
  @override
  Transport createTransport() {
    return Ship();
  }
  
}