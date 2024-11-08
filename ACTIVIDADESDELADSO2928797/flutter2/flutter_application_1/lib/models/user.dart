
import 'dart:convert';



class Company {
  String? name;
  String? catchPhrase;
  String? bs;

  Company(Map company){
    name = company['name'];
    catchPhrase = company['catchPhrase'];
    bs = company['bs'];
  }

  @override
  String toString(){
    return '["name": "$name", "catchPhrase": "$catchPhrase", "bs": "$bs"]';
  }
}

class Address{
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address(Map address){
    
    street = address['street'];
    suite = address['suite'];
    city = address['city'];
    zipcode = address['zipcode'];
    geo =  Geo(address['geo']);

  }
   @override
     String toString(){
    return '["street": "$street", "suite": "$suite", "city": "$city", "zipcode": "$zipcode", "geo": "$geo"]';
  }

}

class User {
  int? id;
  String? name;
  String? username;
  Address? address;
  String? email;
  String? website;
  String? phone;
  Company? company;



  User(String jsonString){
    Map<String, dynamic> decodificar = jsonDecode(jsonString);
    id = decodificar['id'];
    name = decodificar['name'];
    username = decodificar['username'];  
    email = decodificar['email'];
    address = Address(decodificar['address']);
    website = decodificar['website'];
    phone = decodificar['phone'];
    //company = decodificar['company'];
    company = Company(decodificar['company']);


  }
} 



class Geo {
  String? lat;
  String? lng;

  Geo(Map geo){
    
    lat = geo['lat'];
    lng = geo['lng'];
  }
  @override
  String toString(){
    return '["lat": "$lat", "lng": "$lng"]';
  
}}