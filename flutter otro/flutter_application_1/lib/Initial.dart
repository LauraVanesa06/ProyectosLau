import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'pages/pagina2.dart';
import 'cubit/user_cubit.dart';
class Initial extends StatefulWidget {
  const Initial({super.key});

  @override
  State<Initial> createState() => _InitialState();
}

class _InitialState extends State<Initial> {
  final _docController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  void dispose() {
    _docController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserCubit(),
      child: Scaffold(
        body: BlocListener<UserCubit, UserState>(
          listener: (context, state) {
            if (state.error != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.error!)),
              );
            } else if (state.isValid) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const Pagina2()),
              );
              context.read<UserCubit>().reset(); 
            }
          },
          child: BlocBuilder<UserCubit, UserState>(
            builder: (context, state) {
              return Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF8E2DE2),
                          Color(0xFF4A00E0),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 350,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "Bienvenido",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Pacifico',
                            ),
                          ),
                          const Text(
                            "REGISTRARSE AQUI",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 10),
                         
                            
                          const SizedBox(height: 30),
                          TextField(
                            controller: _docController,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.15),
                              hintText: 'Documento',
                              hintStyle: const TextStyle(color: Colors.white70),
                              prefixIcon: const Icon(Icons.badge, color: Colors.white70),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 15),
                          TextField(
                            controller: _nameController,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white.withOpacity(0.15),
                              hintText: 'Nombre',
                              hintStyle: const TextStyle(color: Colors.white70),
                              prefixIcon: const Icon(Icons.person, color: Colors.white70),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purpleAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 40,
                                vertical: 12,
                              ),
                            ),
                            onPressed: () {
                              context.read<UserCubit>().validarFormulario(
                                    _docController.text,
                                    _nameController.text,
                                  );
                            },
                            child: const Text(
                              "Crear",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                     if (state.isLoading)
          Container(
            color: Colors.black.withOpacity(0.5),
             child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
      
                  const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Cargando...",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              )))
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
