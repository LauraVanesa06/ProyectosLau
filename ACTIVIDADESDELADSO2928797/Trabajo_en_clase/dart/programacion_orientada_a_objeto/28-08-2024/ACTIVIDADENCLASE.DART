
class Motor{}
class Car{
  Motor? _motor;

  void Car (Motor c){
    this._motor = c;
  }

  Motor getMotor(){
    return _motor!;
  }
}

void main(){
  Motor motor = new Motor();
  Car car = new Car(motor);
  print(car.getMotor());
}

