import 'dart:math';

import 'package:flutter/material.dart';

class AnimateContainerPage extends StatefulWidget {
  @override
  _AnimateContainerPageState createState() => _AnimateContainerPageState();
}

class _AnimateContainerPageState extends State<AnimateContainerPage> {
  double _width = 50.0;
  double _higth = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animacion de Container"),
        actions: [],
      ),
      body: Center(
        child: AnimatedContainer(
          curve: Curves.easeInSine,
          duration: Duration(seconds: 1),
          width: _width,
          height: _higth,
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_arrow_sharp), onPressed: _cambiarForma),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  void _cambiarForma() {
    final random = Random();
    setState(() {
      _width = random.nextInt(360).toDouble();
      _higth = random.nextInt(360).toDouble();
      _color = Color.fromRGBO(random.nextInt(255), random.nextInt(255),
          random.nextInt(255), random.nextInt(255).toDouble());
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
