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
          _cardTipo3(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo1(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo2(),
          SizedBox(
            height: 30.0,
          ),
          _cardTipo3(),
        ],
        padding: EdgeInsets.all(10.0),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      // clipBehavior: Clip.antiAlias,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.2)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.phone_android),
            title: Text('Soy el titulo de esta tarjeta'),
            subtitle: Text('Lorem Ittmsu sgirigrigiorgirigrignmirg'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(child: Text('Ok'), onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: <Widget>[
          Image(
            image: NetworkImage(
                'https://www.digidirect.com.au/media/blogs/19_08_AUG/Wide_angle_lens_landscape/pietro-de-grandi-T7K4aEPoGGk-unsplash.jpg'),
          ),
          Container(
              padding: EdgeInsets.all(10.0), child: Text('No tengo idea')),
        ],
      ),
    );
  }

  _cardTipo3() {
    final card = Container(
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.2)),
      // elevation: 10.3,
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('img/loading_1.gif'),
            image: NetworkImage(
                'https://www.digidirect.com.au/media/blogs/19_08_AUG/Wide_angle_lens_landscape/pietro-de-grandi-T7K4aEPoGGk-unsplash.jpg'),
            fadeInDuration: Duration(milliseconds: 500),
            height: 350.0,
            fit: BoxFit.cover,
          ),
          Text('Informacion')
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.1),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2.0,
            offset: Offset(2.0, 10.0),
            spreadRadius: 2.0,
          )
        ],
        // color: Colors.red,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
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
