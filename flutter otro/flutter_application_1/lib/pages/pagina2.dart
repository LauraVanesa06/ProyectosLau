import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/user_bloc_bloc.dart';

class Pagina2 extends StatefulWidget {
  const Pagina2({super.key});

  @override
  State<Pagina2> createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  @override
  void initState() {
    super.initState();
    context.read<UserBlocBloc>().add(FetchUsers());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500,
        height: 500,

             decoration: BoxDecoration(
    color: const Color.fromARGB(255, 216, 173, 247),
    borderRadius: BorderRadius.circular(20), 
  ),
   
               margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 70) ,
               

             
            
               
       child:  Column(
        children: [
          // Imagen fija en la parte superior
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxzDKCD_dw08POIcu71QyRBUQCHkzFODK03A&s',
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          // Espacio
          const SizedBox(height: 10),

          // Contenido dinámico
          Expanded(
            
            child: BlocBuilder<UserBlocBloc, UserBlocState>(
              builder: (context, state) {
                if (state is UserBlocLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is UserLoaded) {
                  return ListView.builder(
                    itemCount: state.users.length,
                    itemBuilder: (context, index) {
                
                      final usuario = state.users[index];
                      return ListTile(
                        leading: const Icon(Icons.person),
                       title: Text(usuario.name),
                       subtitle: Text(usuario.email),
                      );
                     
                     
                    },
                  );
                } else if (state is UserError) {
                  return Center(child: Text(state.mensaje));
                }
                return const SizedBox();
              },
            ),
          ),
        ],
      ),
      ),
       
    );
  }
}