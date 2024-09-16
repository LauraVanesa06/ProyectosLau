class Aprendiz{
  int? documento;
  int? seguro;
  int? ficha;

  Aprendiz(int d, int s){
    this.documento = d;
    this.seguro = s;
  }
}

void main(){
  Aprendiz laura = new Aprendiz(1042249249, 76543);
  laura.ficha = 2928707;
  print(laura.documento);
  print(laura.seguro);
  print(laura.ficha);

}