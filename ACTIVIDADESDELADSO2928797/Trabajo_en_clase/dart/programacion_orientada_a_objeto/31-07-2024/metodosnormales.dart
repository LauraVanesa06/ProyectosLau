//metodos = acciones, unos metodos devuelven cosas y otros no devuelven nada.
class Person{
  int? documento;
  String? nombre;
  String? apellido;

  Person(int documento) {
    this.documento = documento;
  }
  String nombreCompleto(){
      return "${this.nombre} ${this.apellido}";
  }
}

void main(){
  Person uno = new Person(1042249249);
  uno.nombre = "Laura";
  uno.apellido = "De la Hoz";
 uno.nombreCompleto();
}