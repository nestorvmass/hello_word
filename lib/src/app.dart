import 'package:flutter/material.dart';
import 'package:hello_word/src/pages/home_page.dart';
import 'package:hello_word/src/pages/home_page_statefullwidget.dart';
import 'package:hello_word/src/pages/listPage.dart';

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: ContadorPage(),
        home: ListPage());
  }
}
