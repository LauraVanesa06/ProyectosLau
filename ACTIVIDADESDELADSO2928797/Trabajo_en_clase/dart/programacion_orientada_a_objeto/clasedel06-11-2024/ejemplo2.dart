

 void main() {
 // Logistics logistics = RoadLogistics();
  //Transporte transporte = Logistics.createTransport();
  Myapp myapp = Myapp(1);
  myapp.dibujar();
}

class Myapp {
  Logistics? dialogo;

  Myapp(int so){
      if (so == 1) {
    this.dialogo = RoadLogistics();
  } else if(so == 2){
    this.dialogo = SeaLogistics();
  } else{
    print("Vaya a recogerse e ingrese algo valido :)");
  }
  }

  void dibujar(){
    Transporte boton = dialogo!.createTransport();
    boton.deliver();
  }
}


abstract class Logistics {
 // planDelivery();
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
    print(" Truck");
  }
}

class Ship implements Transporte {
   @override
  void deliver(){
    print(" Ship");
  }
}