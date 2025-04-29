import 'package:flutter/material.dart';

//! AboutListTile
class PantallaCuatro extends StatelessWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pantalla Cuatro',
          style: TextStyle(
            color: Color(0xffffffff), // Letra negra
            fontSize: 20, // Tamaño 20
          ),
        ),
        centerTitle: true, // Texto centrado
        backgroundColor: Color(0xff6d0568), // Fondo rojo
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Vete a la pantalla 1!'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          // Acople del AboutListTile aquí:
          AboutListTile(
            icon: Icon(Icons.info),
            applicationIcon: FlutterLogo(),
            applicationLegalese: 'Legalese',
            applicationName: 'Flutter App',
            applicationVersion: 'version 1.0.0',
            aboutBoxChildren: [
              Text('This is a text created by Flutter Mapp'),
            ],
          ),
        ],
      ),
    );
  }
}
