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
