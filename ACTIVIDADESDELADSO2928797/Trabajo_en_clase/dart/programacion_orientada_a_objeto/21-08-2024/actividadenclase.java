public class Main {
    public static void main(String[] args) {
        /*
        Transporte car = new Transporte();
        car.empresa = "Transmilenio";
        car.ciudad = "Bogota";
        System.out.println(car.getInfo());
        */
        //System.out.println("Hello world!");
        
        Publico numero = new Publico(23);
        numero.ruta = "A7-4";
        numero.ciudad = "Bogota";
        numero.empresa = "transmilenio";
        //numero.setPublico(897);
        //System.out.println("El codigo es " + numero);
        numero.info();
        
        Particular model = new Particular(45);
        model.ciudad = "Bogota";
        numero.empresa = "transmilenio";
        model.placa = "fh";
        model.color = "lila";
        System.out.println("La ciudad es: " + model.getInfo());
        
        //model.setParticular(2000);
        //System.out.println("El modelo " + model.Particular() + " le toca la tecnicomecanica en " + model.getRtm());
        model.info();
    }

}

// The main method must be in a class named "Main".

class Transporte {
    public String empresa;
    public String ciudad;

    public String getInfo( ){ 
        String retorna = this.empresa + " " + this.ciudad;
        return(retorna);
    }
}
    
   
class Publico extends Transporte{
    private int ninterno;
    public String ruta;
/* 
     public void setPublico( int numero){
         this.ninterno = numero;
    }
*/ 
    
    public  Publico( int n){
        this.ninterno = n;
    }
    
    public String getCodigo(){
        String retornar = this.ruta + this.ninterno;
        return(retornar);
    }
    public void info(){
        System.out.println( "Transporte de: " + getInfo() + ", con ruta: " + getCodigo());
    }
}

class Particular extends Transporte{
    public String placa;
    public String color;
    private int modelo;

   // @overrride
    public String getInfo(){
    return this.ciudad;  
    }

    /*
    public int getParticular(){
        return this.modelo;
    }
    */

       public Particular( int m){
        this.modelo = m;
    }
/*
    public int setParticular( int md){
        return this.modelo= md;
    } */ 

    public int getRtm(){
        return this.modelo + 5;
    }
    void info(){
        System.out.println("Transporte de: " + getInfo() + "con placa: " + placa + ", de color" + color + ", modelo " + modelo + ", el cual tiene su tecnicomecanica en " + getRtm() );
    }
}