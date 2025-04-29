import 'package:flutter/material.dart';

//! Pantalla con AnimatedList para agregar y eliminar ítems
class PantallaSiete extends StatefulWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  State<PantallaSiete> createState() => _PantallaSieteState();
}

class _PantallaSieteState extends State<PantallaSiete> {
  final _items = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  // Función para agregar un nuevo item
  void _addItem() {
    _items.insert(0, "Item ${_items.length + 1}");
    _key.currentState!.insertItem(
      0,
      duration: const Duration(seconds: 1),
    );
  }

  // Función para eliminar un item
  void _removeItem(int index) {
    _key.currentState!.removeItem(
      index,
      (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            child: ListTile(
              title: Text(
                "Deleted",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        );
      },
      duration: const Duration(milliseconds: 300),
    );
    _items.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pantalla Siete',
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
          // Botón para agregar item
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
            color: Color(0xff000000), // Color blanco para el icono
          ),
          // AnimatedList para mostrar los items
          Expanded(
            child: AnimatedList(
              key: _key,
              initialItemCount: 0,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  key: UniqueKey(),
                  sizeFactor: animation,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    color: Colors.orangeAccent, // Color de fondo de cada item
                    child: ListTile(
                      title: Text(
                        _items[index],
                        style: const TextStyle(fontSize: 24),
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        color: Colors
                            .white, // Color blanco para el icono de borrar
                        onPressed: () {
                          _removeItem(index);
                        },
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          // Botón para volver a la pantalla anterior
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Vete a la pantalla 1!'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffec577c), // Color rojo para el botón
              ),
            ),
          ),
        ],
      ),
    );
  }
}
