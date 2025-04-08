import 'package:flutter/material.dart';

class PantallaDos extends StatelessWidget {
  const PantallaDos({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pantalla Dos',
          style: TextStyle(
            color: Color(0xff000000), // Letra blanca
            fontSize: 20, // Tamaño 20
          ),
        ),
        centerTitle: true, // Texto centrado
        backgroundColor: Color(0xffff4e4e), // Fondo gris
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/pantalla3');
          },
          child: const Text('Vete a la pantalla 3 mi niño 🥶!'),
        ),
      ),
    );
  }
}
