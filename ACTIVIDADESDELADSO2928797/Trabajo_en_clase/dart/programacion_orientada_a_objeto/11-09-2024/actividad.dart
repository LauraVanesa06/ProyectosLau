abstract class Person{
  void sendEmail();
}

class Aprendiz implements Person{
@override
void sendEmail(){
  print("El email para aprendiz");
}
}

class Instructor implements Person{
@override
void sendEmail(){
  print("El email para Instructor");
}
}

void main(){
  Person a = Aprendiz();
  Person i = Instructor();
  a.sendEmail();
i.sendEmail();}


