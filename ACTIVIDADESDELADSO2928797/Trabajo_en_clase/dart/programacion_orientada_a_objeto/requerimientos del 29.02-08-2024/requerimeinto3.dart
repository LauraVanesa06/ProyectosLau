

class Hermanas{
  String? nombre;
  String? rol;
  int? edad;

  Hermanas(name, rol, age){
    this.nombre = name;
    this.rol = rol;
    this.edad = age;
  }
   
}

void main(){
  Hermanas lau = new Hermanas("Laura", " de enmedio", 18); 
  Hermanas nat = new Hermanas("Natalia", " mayor", 22); 
  Hermanas vale = new Hermanas("Valerie", " consentida", 10);
   
  print(" La hermana ${lau.nombre} es la hermana ${lau.rol} y tiene ${lau.edad} años");
  print(" La hermana ${nat.nombre} es la hermana ${nat.rol} y tiene ${nat.edad} años");
  print(" La hermana ${vale.nombre} es la hermana ${vale.rol} y tiene ${vale.edad} años");
}
