import 'package:flutter/material.dart';

class Loading_Tareas extends StatelessWidget {
  const Loading_Tareas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}