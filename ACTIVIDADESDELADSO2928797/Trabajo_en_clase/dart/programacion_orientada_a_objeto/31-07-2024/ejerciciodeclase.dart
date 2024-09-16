class Libro{
  String? edicion;
  String? nombre;
  String? autor;
  int? cantExistencia;

  Libro(int cantExistencia) {
    this.cantExistencia = cantExistencia;
  }
}

void main(){
  Libro uno = new Libro(1000);
  uno.edicion = "Tapa dura y tapa blanda";
  uno.nombre = "Orgullo y prejuicio";
  uno.autor = "Jane Austen";

  Libro dos = new Libro(45676);
  dos.edicion = "Tapa dura";
  dos.nombre = "Yo antes de ti";
  dos.autor = "Jojo Moyes";

  print("El libro es ${uno.nombre}, del autor(a) ${uno.autor} tiene ${uno.cantExistencia} en la libreria, la(s) edicion(es) disponibles son ${uno.edicion}");
  print("El libro es ${dos.nombre}, del autor(a) ${dos.autor} tiene ${dos.cantExistencia} en la libreria, la(s) edicion(es) disponibles son ${dos.edicion}");
  }

