import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
};

final _colors = <String, Color>{
  'red': Colors.red,
  'green': Colors.green,
  'yellow': Colors.yellow,
};
Icon getIconWithColor(String nombreIcono, String color) {
  return Icon(_icons[nombreIcono], color: _colors[color]);
}
