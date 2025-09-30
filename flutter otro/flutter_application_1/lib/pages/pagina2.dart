import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/user_bloc_bloc.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserBlocBloc()..add(FetchUsers()),
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 216, 173, 247),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxzDKCD_dw08POIcu71QyRBUQCHkzFODK03A&s',
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
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
      ),
    );
  }
}
