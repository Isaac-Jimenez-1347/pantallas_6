import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pantalla Inicial',
          style: TextStyle(
            color: Colors.white, // Letra blanca
            fontSize: 20, // Tamaño 20
          ),
        ),
        centerTitle: true, // Texto centrado
        backgroundColor: Color(0xff575757), // Fondo gris
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla2');
              },
              child: const Text('Cambia a la pantalla 2 papu!😎'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla3');
              },
              child: const Text('Cambia a la pantalla 3 papu 👽!'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla4');
              },
              child: const Text('Cambia a la pantalla 4 papu 🥵!'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla5');
              },
              child: const Text('Cambia a la pantalla 5 papu 💩!'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla6');
              },
              child: const Text('Cambia a la pantalla 6 papu 🤖!'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pantalla7');
              },
              child: const Text('Cambia a la pantalla 7 papu 🎶!'),
            ),
          ),
        ],
      ),
    );
  }
}
