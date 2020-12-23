import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<int> _listaNumeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 34, 62, 24, 543];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _crearLista(),
        actions: [],
      ),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        final imagen = _listaNumeros[index];

        return FadeInImage(
            placeholder: AssetImage('img/loading_1.gif'),
            image: NetworkImage('https://picsum.photos/id/$imagen/500/300'));
      },
      itemCount: _listaNumeros.length,
    );
  }
}
