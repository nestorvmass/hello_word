import 'package:flutter/material.dart';

// Estilos de textos
final estiloTexto = new TextStyle(color: Colors.red, fontSize: 25);

int conteo = 0;

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo App'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numeros de Tabs',
              style: estiloTexto,
            ),
            Text(
              '$conteo',
              style: estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            conteo++;
            print('Hola mundo{}');
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
