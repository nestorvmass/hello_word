import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'play': Icons.play_arrow,
  'input': Icons.input,
  'list': Icons.list,
};

final _colors = <String, Color>{
  'red': Colors.red,
  'green': Colors.green,
  'yellow': Colors.yellow,
  'purple': Colors.purple,
  'browm': Colors.brown,
};
Icon getIconWithColor(String nombreIcono, String color) {
  return Icon(_icons[nombreIcono], color: _colors[color]);
}
