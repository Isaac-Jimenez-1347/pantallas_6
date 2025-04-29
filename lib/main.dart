import 'package:flutter/material.dart';
import 'package:jimenezrutas/pagina_inicial.dart';
import 'package:jimenezrutas/pagina_dos.dart';
import 'package:jimenezrutas/pagina_tres.dart';
import 'package:jimenezrutas/pagina_cuatro.dart';
import 'package:jimenezrutas/pagina_cinco.dart';
import 'package:jimenezrutas/pantalla_seis.dart';
import 'package:jimenezrutas/pantalla_siete.dart';

void main() => runApp(MiRutas());

class MiRutas extends StatelessWidget {
  const MiRutas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas entre paginas',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PantallaSeis(),
        '/pantalla7': (context) => const PantallaSiete(),
      },
    );
  }
}
