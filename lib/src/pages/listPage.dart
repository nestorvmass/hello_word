import 'package:flutter/material.dart';
import 'package:hello_word/src/helpers/jsontoicon.dart';
import 'package:hello_word/src/providers/menujson.dart';

class ListPage extends StatelessWidget {
  final opciones = ['opcion 1', 'opcion 2', 'opcion 3', 'Opcion 4', 'Opcion 5'];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('List View'),
        ),
        body: _ListViewFromJson(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = List<Widget>();

    for (String opcion in opciones) {
      final tempWidget = ListTile(
        title: Text(opcion),
        onTap: () {},
      );
      lista.add(tempWidget);
      lista.add(Divider());
    }
    return lista;
  }

  List<dynamic> _crearItemsFacil() {
    // print(menuProvider.opciones);
    menuProvider.cargarData().then((opciones) => print(opciones));

    return opciones.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Ejemplo'),
            // leading: Text('-'),
            trailing: Icon(Icons.arrow_right),
            onLongPress: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }

  Widget _ListViewFromJson() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _crearItemsFromJson(snapshot.data),
        );
      },
    );
  }

  List<dynamic> _crearItemsFromJson(List<dynamic> data) {
    final List<Widget> opciones = [];
    final colores = Colors.green;
    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIconWithColor(opt['icon'], 'green'), ,
        trailing: Icon(
          Icons.arrow_right,
          color: colores,
        ),
      );
      opciones.add(widgetTemp);
      opciones.add(Divider());
    });

    return opciones;
  }
}
