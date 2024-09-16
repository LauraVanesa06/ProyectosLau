
import 'dart:io';

void main(){
   
  Anagrama anagrama1 = new Anagrama();
  anagrama1.palabra1 = stdin.readLineSync()!;
  anagrama1.palabra2 = stdin.readLineSync()!;
  anagrama1.palabbas();
  
print("hola");

}
class Anagrama{
  String palabra1 = "";
  String palabra2 = "";

  String separar() {
     List <String> p1 = palabra1.split(''); 
      //p1.sort();
      return p1.join();



  }
 String palabra2separar(){
       List <String> p2 = palabra2.split(''); 
       //p2.sort();
      return p2.join();    
  }

  void palabbas(){
    
    if (separar()== palabra2separar()) {
      print("Las palabas son anagrama");
    } else{
      print("Las palabas no son anagrama");
    }

  }
}
