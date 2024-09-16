import 'dart:io';
import 'dart:core';

class Colaborador{

  String? _nombreCompleto;
  int? _tipoColaborador;
  double _aporte = 0;

  Colaborador(String nombre, double aporte, int tipo){
    this._nombreCompleto = nombre;
    this._aporte = aporte;
    this._tipoColaborador = tipo;
  }

  String getNombreCompleto(){
    return this._nombreCompleto!;
  }

  int getTipo() => _tipoColaborador!;

  @override
  String toString(){
    return "su nombre es: ${this._nombreCompleto} su porte es: ${this._aporte} su tipo de colaboracion es: ${this._tipoColaborador}";
  }

  double getAporte(){
    return this._aporte;
  }

}

class Recolecta {
  List<Colaborador>? _colaboradores;
  double? _montoRecaudar;
  double? _balance;

  Recolecta(){
    this._colaboradores = [];
    //this._balance = 0;
  }
  void addColaborador(Colaborador colaborador){
    _colaboradores!.add(colaborador);

  }
  bool finalizada( ){
      if (_balance! >= _montoRecaudar!) {
           return true;
      } else{
        return false; 
      }
  }

    List<Colaborador>? generosos(){
    List<Colaborador> gene = [];
    for (int i = 0; i < _colaboradores!.length; i++){
      Colaborador col = _colaboradores![i];
      if (col.getAporte() > 10000) {
        gene.add(_colaboradores![i]);    
      
  }
    }
  return gene;
}

  double? recaudoGenerosos(){
    List<Colaborador>? gen = generosos();
    double total = 0;
    for (int i = 0; i < gen!.length; ){
      total = total + gen[i].getAporte();
     } 
    return total;

  } 
/*
double? promedioGenerosos() {
      double? recaudo = recaudoGenerosos();
  
  double suma = 0;
  for (double aporte in ) {
    suma += aporte;  
  }

  return suma / aportesGenerosos.length;  
}
  */
}


void main(){
  Recolecta recolecta = Recolecta();
  for (var i = 0; i <= 2; i++) {
    print("Ingrese nombre");
    String nombre = stdin.readLineSync()!;

    print("Ingrese aporte");
    double apor = double.parse(stdin.readLineSync()!);

    print("Ingrese tipo");
    int tipo = int.parse(stdin.readLineSync()!);

    Colaborador can =  Colaborador(nombre, apor, tipo);
    recolecta.addColaborador(can);
    print(can.toString());
  }

  

  //print(can.toString());
   


  //print(lau._colaboradores);
}