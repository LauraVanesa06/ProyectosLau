part of 'user_bloc_bloc.dart';


sealed class UserBlocState {}

final class UserBlocInitial extends UserBlocState {}
final class UserBlocLoading extends UserBlocState {}
final class UserLoaded extends UserBlocState {
  final List<dynamic> users;
  UserLoaded(this.users);
}

class UserError extends UserBlocState {
  final String mensaje;
  UserError(this.mensaje);
}
