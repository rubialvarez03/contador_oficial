import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Contador'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Numero de clicks'),
            Text('$contador'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(children: [
        FloatingActionButton(
          onPressed: () => _botonMas(),
          child: const Icon(Icons.add),
        ),
        const SizedBox(
          width: 110.0,
          height: 50.0,
        ),
        FloatingActionButton(
          onPressed: () => _botonMenos(),
          child: const Icon(Icons.remove),
        ),
        const SizedBox(
          width: 114.0,
          height: 50.0,
        ),
        FloatingActionButton(
          onPressed: () => _botonReset(),
          child: const Icon(Icons.restart_alt),
        ),
      ]),
    );
  }

  void _botonMas() {
    setState(() => contador++);
  }

  void _botonMenos() {
    setState(() {
      if (contador > 0) {
        contador--;
      }
    });
  }

  void _botonReset() {
    setState(() => contador = 0);
  }
}
