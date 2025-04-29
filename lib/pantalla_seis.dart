import 'package:flutter/material.dart';

//! AnimatedDefaultTextStyle en lugar de AnimatedAlign
class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _PantallaSeisState();
}

class _PantallaSeisState extends State<PantallaSeis> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

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
            _fontSize = _first ? 90 : 60;
            _color = _first ? Colors.blue : Colors.red;
            _first = !_first;
          });
        },
        child: Center(
          child: Container(
            width: double.infinity,
            height: 250.0,
            color: Colors.blueGrey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 300),
                  style: TextStyle(
                    fontSize: _fontSize,
                    color: _color,
                    fontWeight: FontWeight.bold,
                  ),
                  child: const Text('Flutter'),
                ),
                SizedBox(height: 20), // Espaciado entre el texto y el botón
                TextButton(
                  onPressed: () {
                    setState(() {
                      _fontSize = _first ? 90 : 60;
                      _color = _first ? Colors.blue : Colors.red;
                      _first = !_first;
                    });
                  },
                  child: const Text(
                    "Switch",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
