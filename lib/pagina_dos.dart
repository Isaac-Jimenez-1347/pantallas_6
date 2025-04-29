import 'package:flutter/material.dart';

//! PantallaSeis con AnimatedAlign y botón para volver
class PantallaDos extends StatefulWidget {
  const PantallaDos({Key? key}) : super(key: key);

  @override
  State<PantallaDos> createState() => _PantallaDosState();
}

class _PantallaDosState extends State<PantallaDos> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pantalla dos',
          style: TextStyle(
            color: Color(0xff000000), // Letra negra
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffec577c), // Fondo rojo
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
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
          const SizedBox(height: 10),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Vete a la pantalla 1!'),
            ),
          ),
        ],
      ),
    );
  }
}
