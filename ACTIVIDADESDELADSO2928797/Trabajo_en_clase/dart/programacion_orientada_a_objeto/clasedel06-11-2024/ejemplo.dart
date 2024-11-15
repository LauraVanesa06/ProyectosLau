void main(){
  Myapp myapp = Myapp(1);
  myapp.dibujar;
  
}

class Myapp {
  Dialogo? dialogo;

  Myapp(int so){
      if (so == 1) {
    this.dialogo = DialogoMaterial();
  } else if(so == 2){
    this.dialogo = DialogoCupertino();
  } else{
    this.dialogo = DialogoHtml();
  }
  }

  void dibujar(){
    Boton boton = dialogo!.crearboton();
    boton.pintar();
  }
}

abstract class Dialogo {
  Boton crearboton();
}

class DialogoMaterial extends Dialogo{
  @override
  Boton crearboton() {
   return botonMaterial();
  }
  
}

class DialogoCupertino extends Dialogo{
  @override
  Boton crearboton() {
   return botonCupertino();
  }
}


class DialogoHtml extends Dialogo{
  @override
  Boton crearboton() {
   return botonHtml();
  }
}

abstract class Boton {
  void pintar();
}

class botonMaterial implements Boton {
  @override
  void pintar(){
    print("pinta boton material");
  }
}

class botonCupertino implements Boton {
  @override
  void pintar(){
    print("pinta boton cupertino");
  }
}

class botonHtml implements Boton {
  @override
  void pintar(){
    print("pinta boton html");
  }
}