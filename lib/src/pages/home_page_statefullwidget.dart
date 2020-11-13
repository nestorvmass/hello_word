import 'package:flutter/material.dart';

// Estilos de textos
TextStyle _estiloTexto = new TextStyle(color: Colors.blue, fontSize: 25);
int _conteo = 0;

class ContadorPage extends StatefulWidget {
  ContadorPage({Key key}) : super(key: key);

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
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
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: _estiloTexto,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            _conteo++;
            print('Hola mundo{}');
            setState(() {});
            if (_conteo == 30) {
              print('Mas de 30 toques');
            }
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
