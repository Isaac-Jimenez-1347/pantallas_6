import 'package:flutter/material.dart';

//! AnimatedAlign con GestureDetector
class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _PantallaSeisState();
}

class _PantallaSeisState extends State<PantallaSeis> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pantalla Seis',
          style: TextStyle(
            color: Color(0xff000000), // Letra negra
            fontSize: 20, // Tamaño 20
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffff4e4e), // Fondo rojo
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            width: double.infinity,
            height: 250.0,
            color: Colors.blueGrey,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(size: 50.0),
            ),
          ),
        ),
      ),
    );
  }
}
