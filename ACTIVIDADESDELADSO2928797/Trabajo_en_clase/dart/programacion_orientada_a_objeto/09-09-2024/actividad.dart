import 'dart:io';

class Colaborador{

  String? _nombreCompleto;
  int? _tipoColaborador;
  double _aporte = 0;

  Colaborador(String nombre, double aporte, int tipo){
    this._nombreCompleto = nombre;
    this._aporte = aporte;
    this._tipoColaborador = tipo;
  }

  String getNombreCompleto() => this._nombreCompleto!;
  

  int getTipo() => _tipoColaborador!;

  @override
  String toString() => "Señor(a) ${this._nombreCompleto} su porte fue de: ${this._aporte} y es un colaborador de tipo: ${this._tipoColaborador}";
  

  double getAporte() => this._aporte;
  

}

class Recolecta {
  List<Colaborador>? _colaboradores = [];
  double? _montoRecaudar;
  double? _balance;

  Recolecta(double monto, double balance){
   // this.colaboradores = [];
    this._balance = balance;
    this._montoRecaudar = monto; 
  }

  void addColaborador(Colaborador colaborador){
    this._colaboradores!.add(colaborador);
    _balance = _balance! + colaborador.getAporte(); 
  }

  bool finalizada( ){
    if (_balance! >= _montoRecaudar!) {
      return true;
    } else{
      return false; 
    }
  }

  List<Colaborador> generosos(){
    List<Colaborador> gene = [];
    for (int i = 0; i<_colaboradores!.length; i++){
      Colaborador colab = _colaboradores![i];
      if (colab.getAporte() > 10000) {
        gene.add(_colaboradores![i]);    
      }
    }
    return gene;
  }

  double recaudoGenerosos(){
    List<Colaborador>? gen = generosos();
    double total = 0;
    for (int i = 0; i < gen.length; i++){
      total = total + gen[i].getAporte();
     } 
    return total;
  } 

  double promedioGenerosos() => recaudoGenerosos() / generosos().length;
    /*
    double? recaudo = recaudoGenerosos();
    double geneero = generosos().length;
    double dividir = recaudo! /geneero; 
    return dividir;
    */
  double recaudoPorTipo(Tipo){
    double aprendiz = 0;
    double instructor = 0;
    for (int i = 0; i < _colaboradores!.length; i++) {
      if(_colaboradores![i].getTipo() == 1 ){
        aprendiz = aprendiz +1;
      } else if (_colaboradores![i].getTipo() == 2){
        instructor = instructor +1;
      }
    }
    if (Tipo == 1) {
      return aprendiz;
    } else{
      return instructor;

    }
  } 
} 

void main(){
  Recolecta recolecta = Recolecta(50000,0);

  // double mo = double.parse(stdin.readLineSync()!);
  // double ba = double.parse(stdin.readLineSync()!);
  while(!recolecta.finalizada()){
    print("Ingrese nombre");
    String nombre = stdin.readLineSync()!;

    print("Ingrese aporte");
    double apor = double.parse(stdin.readLineSync()!);

    print("Ingrese tipo");
    int tipo = int.parse(stdin.readLineSync()!);

    Colaborador col =  Colaborador(nombre, apor, tipo);
    recolecta.addColaborador(col);
    //print(col.toString());
  }

  print("Los colaboradores fueron: ${recolecta._colaboradores}");
  print("La meta era de: ${recolecta._balance}");
  print("El recaudo de las personas que aportaron mas de 10.000 es de: ${recolecta.recaudoGenerosos()} y fueron ${recolecta.generosos()} para obtener un promedio de ${recolecta.promedioGenerosos()}");
  //recolecta.recaudoGenerosos(); 
  // print("El promedio deb los que aportaron mas de 10.000 es de: ");
  // recolecta.promedioGenerosos();
  print("Los instructores que aportaron fueron: ${recolecta.recaudoPorTipo(2)}");
  print("Los aprendices que aportaron fueron: ${recolecta.recaudoPorTipo(1)}");
  print("Listo"); 
  //print(col.toString());
  //print(lau._colaboradores);
}