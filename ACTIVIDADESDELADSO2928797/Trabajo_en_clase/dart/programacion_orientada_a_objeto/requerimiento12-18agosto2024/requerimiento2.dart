// hacer una clase cuenta con titular ivan y saldo, se puede sacar y meter dinero. 
import 'dart:io';

class Cuenta{
  String? titular;
  int saldo = 1500000;
  int? ivan;
  int? ingresoo;
  
  
  Cuenta(String tt, int ib, ){
    this.titular = tt;
    this.ivan = ib;

  }
  int ingreso(){
    int ingre = int.parse(stdin.readLineSync()!);
    int? saldoo = this.saldo; 
    //this.saldo + this.ingreso;
 ///  this.ingresoo = ingre;

      int sum = saldoo + ingre;
      return sum;

      
  
  }
  int salida(){
    int sal = int.parse(stdin.readLineSync()!);
    int? saldoo = this.saldo; 
    //this.saldo + this.ingreso;
 ///  this.ingresoo = ingre;

      int res = saldoo - sal;
      return res;

  }
}

void main(){
  Cuenta personauno = new Cuenta("Laura", 32875);
  print("La propietaria ${personauno.titular} al ingresar la cantidad su saldo quedó en ${personauno.ingresoo} pero al sacar para pagar su saldo descednio a ${personauno.salida()}");
}