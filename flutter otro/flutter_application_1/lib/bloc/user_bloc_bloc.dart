import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

part 'user_bloc_event.dart';
part 'user_bloc_state.dart';

class UserBlocBloc extends Bloc<UserBlocEvent, UserBlocState> {
  UserBlocBloc() : super(UserBlocInitial()) {
     on<FetchUsers>((event, emit) async {
     emit(UserBlocLoading());
     try {
      final url = Uri.parse('https://jsonplaceholder.typicode.com/users');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final datos = jsonDecode(response.body);
        emit(UserLoaded(datos));
      } else{
        emit(UserError("Error al cargar usuarios"));
      }

     } catch (e) {
       emit(UserError("Error: $e"));
     }
    });
  }
}
