import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(
          'https://media.giphy.com/media/65LrvAMGU650TvPgs5/giphy.gif?raw=true',
        ),
        const Text('Id: 1'),
        const Text('Name: ...'),
        const Text('Username: ...'),
        const Text('Email: ...'),
        const Text('Address: ...'), 
        const Text('Phone: ...'),
        const Text('Website: .'),
        const Text('Company: ..'),
        ElevatedButton(onPressed: (){}, child: const Text('Enviar')),
        const CircularProgressIndicator.adaptive()
      ],
    );
  }
}