import 'dart:convert';

class Colaborador {
  String? nombreCompleto;
  int? tipoColaborador;
  double? aporte;

  Colaborador(Map decodificar) {
    this.nombreCompleto = decodificar['nombreCompleto'];
    this.aporte = decodificar['aporte'];
    this.tipoColaborador = decodificar['tipoColaborador'];
  }
}

void main() {
  String info =
      '{"nombreCompleto": "Laura","tipoColaborador": 1, "aporte": 50000.0}';

  Map<String, dynamic> decodificar = jsonDecode(info);

  Colaborador colaborador = Colaborador(decodificar);
  print(colaborador.aporte);
  print(colaborador.nombreCompleto);
  print(colaborador.tipoColaborador);
}
