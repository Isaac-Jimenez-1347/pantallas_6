import 'package:flutter/material.dart';

//! AlertDialog y navegación
class PantallaCinco extends StatelessWidget {
  const PantallaCinco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pantalla Cinco',
          style: TextStyle(
            color: Color(0xff000000), // Letra negra
            fontSize: 20, // Tamaño 20
          ),
        ),
        centerTitle: true, // Texto centrado
        backgroundColor: Color(0xffff4e4e), // Fondo rojo
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Vete a la pantalla 1!'),
            ),
          ),
          const SizedBox(height: 20), // Espacio entre botones
          Center(
            child: ElevatedButton(
              child: const Text('Show Alert Dialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Close'),
                      ),
                    ],
                    title: const Text('Flutter Mapp'),
                    contentPadding: const EdgeInsets.all(20.0),
                    content: const Text('This is the Alert Dialog'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
