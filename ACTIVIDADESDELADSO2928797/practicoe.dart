

void main(){
  
}
abstract class transport{
  void Deliver();
}
class Truck extends transport{
  void Deliver(){
    print("object");
  }
}
class Ship extends transport{
  void Deliver(){
    print("object");
  }
}
abstract class  Logistics{
  void planDelivery(){
    transport t = createTransport();
    return t.Deliver();
  }
 createTransport();  
} 
class SeaLogistics extends Logistics{
 
  @override
  createTransport() {
    return Ship();
  }
} 
class RoadLogistics extends Logistics{
  @override
  createTransport() {
    return Truck();
    
  }
  
}
