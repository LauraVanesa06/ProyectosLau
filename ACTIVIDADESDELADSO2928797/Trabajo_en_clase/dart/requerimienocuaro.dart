abstract class Transporte{
  void deliver();
}

class Camion implements Transporte{
  @override
  void deliver(){
    print("la entrega sera terrestre");
  }
}

class Barco implements Transporte{
  @override
  void deliver() {
    print("la entrega sera acuatico");
  }
}

abstract class Logistica{
  Transporte crearTransporte();
}

class LogisticaTerrestre extends Logistica{
  @override
  Transporte crearTransporte() {
    return Camion();
  }
}


class LogisticaMaritima extends Logistica{
  @override
  Transporte crearTransporte() {
    return Barco();
  }
}

void main(){
  Logistica l = LogisticaMaritima();
  Transporte t = l.crearTransporte();
  t.deliver();
}