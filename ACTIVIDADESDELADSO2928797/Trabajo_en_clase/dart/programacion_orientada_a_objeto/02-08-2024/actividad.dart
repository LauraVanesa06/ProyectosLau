
import 'dart:io';

class Calculadora{
  double num1 = 0;
  double num2 = 0;
  String aperacion = "";

  Calculadora(double n1, double n2,String op) {
    this.num1 = n1;
    this.num2 = n2;
    this.aperacion = op;
  }

  double sumar(){
      double sum = this.num1 + this.num2;
      return sum;
  }

    double restar(){
      double res = this.num1 - this.num2;
      return res;
  }

    double multiplicar(){
      double multi = this.num1 * this.num2;
      return multi;
  }

    double divicion(){
      //double divi = this.num1 + this.num2;
      return (num1 / num2);
  }

  void calcular(){
    if (aperacion == "SUMAR"){
        //double imprimir = cal.sumar;
        print (sumar());
    }else if(aperacion == "RESTAR"){
        //double imprimir = cal.restar;
        print (restar());
    }else if(aperacion == "MULTIPLICAR"){
        //ouble imprimir = cal.multiplicar;
        print (multiplicar());
    }else if(aperacion == "DIVIDIR"){
        print(divicion());

    }
  }


}

void main(){
  String elegir = stdin.readLineSync()!;
  Calculadora cal = new Calculadora(5,4,elegir);
  cal.calcular;


}