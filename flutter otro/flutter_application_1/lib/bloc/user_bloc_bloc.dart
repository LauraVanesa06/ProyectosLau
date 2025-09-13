import 'package:flutter_application_1/models/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

part 'user_bloc_event.dart';
part 'user_bloc_state.dart';

class UserBlocBloc extends Bloc<UserBlocEvent, UserBlocState> {
  UserBlocBloc() : super(UserBlocInitial()) {
    // evento de carga de usuarios
    on<FetchUsers>((event, emit) async {
      emit(UserBlocLoading());
      try {
        final url = Uri.parse('https://jsonplaceholder.typicode.com/users');
        final response = await http.get(url);
        if (response.statusCode == 200) {
          final datos = jsonDecode(response.body) as List;
          final usuarios = datos.map((e) => UserModel.fromJson(e)).toList();
          emit(UserLoaded(usuarios));
        } else {
          emit(UserError("Error al cargar usuarios"));
        }
      } catch (e) {
        emit(UserError("Error: $e"));
      }
    });
    on<ValidarForm>((event, emit) async {
      if (event.documento.isEmpty || event.nombre.isEmpty) {
        emit(UserFormError("Todos los campos son obligatorios"));
      } else {
        emit(UserBlocLoading());
        await Future.delayed(const Duration(seconds: 2)); 
        emit(UserFormValid());
      }
    });
  }
}
