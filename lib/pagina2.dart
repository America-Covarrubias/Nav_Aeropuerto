import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Pagina'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(leading: Icon(Icons.album), title: Text('Aviones'), subtitle: Text('Modelos')),
          ),
          Card(
            child: ListTile(leading: Icon(Icons.album), title: Text('Empleados'), subtitle: Text('Tipos de empleados')),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Colors.purple,
              onSurface: Colors.grey,
              side: BorderSide(color: Colors.black, width: 1),
              elevation: 20,
              minimumSize: Size(150, 50),
            ),
            // Within the SecondScreen widget
            onPressed: () {
              // Navigate back to the first screen by popping the current route
              // off the stack.
              Navigator.pop(context);
            },
            child: const Text('Regresar'),
          ),
        ],
      ),
    );
  }
}
