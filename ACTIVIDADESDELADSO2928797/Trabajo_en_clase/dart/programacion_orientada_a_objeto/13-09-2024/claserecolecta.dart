import 'clasecolaborador.dart';

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

  double? getbalance() => this._balance;

  List<Colaborador>? getcol()=> this._colaboradores;

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