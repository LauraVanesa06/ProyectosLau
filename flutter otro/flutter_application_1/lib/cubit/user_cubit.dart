import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert';
class UserState {
  final bool isValid;
  final String? error;
  final bool isLoading;

  UserState({
    this.isValid = false,
    this.error,
    this.isLoading = false,
  });

  UserState copyWith({
    bool? isValid,
    String? error,
    bool? isLoading,
  }) {
    return UserState(
      isValid: isValid ?? this.isValid,
      error: error,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  factory UserState.initial() => UserState(
        isValid: false,
        error: null,
        isLoading: false,
      );
}

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserState.initial());

  Future<void> validarFormulario(String documento, String nombre) async {
    if (documento.isEmpty || nombre.isEmpty) {
      emit(UserState(isValid: false, error: 'Todos los campos son obligatorios'));
      return;
    } else if (documento.length < 5) {
      emit(UserState(isValid: false, error: 'El documento debe tener al menos 5 caracteres'));
      return;
    } else if (nombre.length < 3) {
      emit(UserState(isValid: false, error: 'El nombre debe tener al menos 3 caracteres'));
      return;
    } 
    emit(state.copyWith(isLoading: true, error: null));

    try {
      final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({
          "documento": documento,
          "nombre": nombre,
        }));
        if (response.statusCode == 201 || response.statusCode == 200) {
  
        emit(UserState(isValid: true, error: null, isLoading: false));

     
        await Future.delayed(const Duration(seconds: 2));

      } else {
        emit(UserState(isValid: false, error: 'Error en la validación del servidor', isLoading: false));
      }
    } catch (e) {
      emit(UserState(isValid: false, error: 'Error de red: $e', isLoading: false));
    }
  }

  void reset() {
    emit(UserState.initial());
  } 
  }
