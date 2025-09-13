part of 'user_bloc_bloc.dart';


abstract class UserBlocEvent {}
class FetchUsers extends UserBlocEvent {}

class ValidarForm extends UserBlocEvent {
  final String documento;
  final String nombre;
  ValidarForm(this.documento, this.nombre); 
}
