import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/user_bloc_bloc.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});
  
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: const Text('Datos cargados')),
      body: BlocBuilder<UserBlocBloc, UserBlocState>(
        builder: (context, State){
          if (State is UserLoaded) {
            return const Center(child: CircularProgressIndicator());
          }
        }
      )

        return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  ListTile(
                    title: Text(usuario['name'] ?? 'Sin nombre'),
                    subtitle: Text(usuario['email'] ?? 'Sin email'),
                  ),
                  const Divider(),
                ],
              );
              
          
          ),
  );
}


  }
