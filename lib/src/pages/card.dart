import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        children: [
          _cardTipo1(),
        ],
        padding: EdgeInsets.all(20.1),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.phone_android),
          )
        ],
      ),
    );
  }
}

// En return
// appBar: AppBar(
// title: Text('Pagina Cards'),
// ),
// floatingActionButton: FloatingActionButton(
// child: Icon(Icons.home), onPressed: () => Navigator.pop(context)),
// // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
// floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
