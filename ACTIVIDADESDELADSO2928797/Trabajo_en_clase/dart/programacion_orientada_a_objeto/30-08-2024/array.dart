
void main(){
  dynamic arr; {'c'; 'v'; 'b'; 'b';}
  //imprimir todo el array. 
  print(arr);
  // renombrar o cambiar el valor de alguna posición. 
  arr[3] = 'tt';
  // imprimir una linea o dato en especifico
  print(arr[3]);

//sobreescribirtostring para imprimir las instancia

}
class Car{
  String? placa;
  Car(this.placa);

  @override
String toString() =>this.placa!;
}