import 'package:flutter/material.dart';
import 'pages/pagina2.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/user_bloc_bloc.dart';

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
    return Scaffold(

      body: BlocListener<UserBlocBloc, UserBlocState>(
        listener: (context, state) {
          if (state is UserFormError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.mensaje)),
            );
          } else if (state is UserFormValid) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Pagina2()),
            );
          }
        },
        child: BlocBuilder<UserBlocBloc, UserBlocState>(
          builder: (context, state) {
            if (state is UserBlocLoading) {
              return const Center(child: CircularProgressIndicator());
            }
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
               
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: CustomPaint(
                    size: Size(MediaQuery.of(context).size.width, 300),
                    painter: MountainPainter(),
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
                          "Welcome",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Pacifico',
                          ),
                        ),
                        const Text(
                          "to the Website",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fringilla risus quam, eget interdum est tempor at. Nam quis ultricies leo.",
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 30),

                       
                       

                      
                        TextField(
                          controller: _docController,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white.withOpacity(0.15),
                            hintText: 'Documento',
                            hintStyle: TextStyle(color: Colors.white70),
                            prefixIcon: const Icon(Icons.person, color: Colors.white70),
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
                            hintStyle: TextStyle(color: Colors.white70),
                            prefixIcon: const Icon(Icons.person, color: Colors.white70),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                     

                        const SizedBox(height: 15),

                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purpleAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                          ),
                          onPressed: () {
                            context.read<UserBlocBloc>().add(
                                  ValidarForm(
                                    _docController.text,
                                    _nameController.text,
                                  ),
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
              ],
            );
          },
        ),
      ),
    );
  }
}

class MountainPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = const Color(0xFF4A00E0);
    final path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width * 0.2, size.height * 0.4)
      ..lineTo(size.width * 0.4, size.height)
      ..close();
    canvas.drawPath(path, paint);

    paint.color = const Color(0xFF7B3FE4);
    final path2 = Path()
      ..moveTo(size.width * 0.3, size.height)
      ..lineTo(size.width * 0.5, size.height * 0.5)
      ..lineTo(size.width * 0.7, size.height)
      ..close();
    canvas.drawPath(path2, paint);

    paint.color = const Color(0xFF8E2DE2);
    final path3 = Path()
      ..moveTo(size.width * 0.6, size.height)
      ..lineTo(size.width * 0.8, size.height * 0.45)
      ..lineTo(size.width, size.height)
      ..close();
    canvas.drawPath(path3, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
