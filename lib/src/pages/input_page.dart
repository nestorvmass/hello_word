import 'dart:ui';

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = "";
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
        actions: [],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _CrearInput(),
          Divider(),
          _infoPersona(),
          Divider(),
          _crearEmail(),
        ],
      ),
    );
  }

  Widget _CrearInput() {
    return TextField(
      // Propiedades interesantes
      autofocus: false,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Usuario',
        helperText: 'Solo letras',
        suffixIcon: Icon(Icons.accessibility_new),
        icon: Icon(Icons.supervised_user_circle),
      ),
      onChanged: (valor) {
        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  _infoPersona() {
    return ListTile(
      title: Text('Mi nombre es: $_nombre '),
      subtitle: Text('La contraseña es: $_password'),
    );
  }

  Widget _crearEmail() {
    return TextField(
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
        counter: Text('Letras ${_password.length}'),
        hintText: 'Email',
        // suffixIcon: Icon(Icons.email),
        icon: Icon(Icons.email),
      ),
      onChanged: (value) {
        setState(() {
          _password = value;
        });
      },
    );
  }
}
