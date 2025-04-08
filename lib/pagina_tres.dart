import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pantalla Tres',
          style: TextStyle(
            color: Color(0xffffffff), // Letra blanca
            fontSize: 20, // Tamaño 20
          ),
        ),
        centerTitle: true, // Texto centrado
        backgroundColor: Color(0xff8345e7), // Fondo gris
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Y volvemos a la normalidad (pant 1)🐣!'),
        ),
      ),
    );
  }
}
