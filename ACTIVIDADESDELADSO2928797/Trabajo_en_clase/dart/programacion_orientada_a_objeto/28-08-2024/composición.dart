
class Battery{}

  class Cel{
      Battery? _battery;

      Cel( Battery b     ){
        this._battery;
      }
  }

  void main(){
    Battery battery =  Battery();
    Cel iphone =  Cel(battery);
    print(iphone);
  }