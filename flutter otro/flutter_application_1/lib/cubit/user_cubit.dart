import 'package:flutter_bloc/flutter_bloc.dart';

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
      await Future.delayed(const Duration(seconds: 4));

      emit(UserState(isValid: true, error: null, isLoading: false));
    } catch (e) {
      emit(UserState(isValid: false, error: "Error de conexión", isLoading: false));
    }
  }

  void reset() {
    emit(UserState.initial());
  }
}
