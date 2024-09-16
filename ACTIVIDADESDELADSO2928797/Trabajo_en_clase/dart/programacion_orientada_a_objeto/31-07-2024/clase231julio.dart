class Person {
  int? cedula;
  String? nombre;
  String? apellido;
  int? edad;
  String? sexo;
  String? piel;

  Person(String sexo, String p) {
    this.sexo = sexo;
    this.piel = p;
  }

}

void main(){
  
  Person sujetouno = new Person("M", "Negro");
  print(sujetouno.nombre); // no imprime nada
  print(sujetouno.sexo); //imprime "M"
  sujetouno.cedula = 1042249249;
  sujetouno.nombre = "Laura";
  sujetouno.apellido = "De la Hoz";
  sujetouno.edad = 18;
  
}

