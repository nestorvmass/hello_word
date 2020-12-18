import 'package:flutter/material.dart';
import 'package:hello_word/src/pages/alert_page.dart';
// import 'package:hello_word/src/pages/avatar_page.dart';
// import 'package:hello_word/src/pages/home_page.dart';
// import 'package:hello_word/src/pages/home_page_statefullwidget.dart';
// import 'package:hello_word/src/pages/listPage.dart';
import 'package:hello_word/src/routes/routes.dart';

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //     brightness: Brightness.dark,
      //     primaryColor: Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5)),

      debugShowCheckedModeBanner: false,
      // home: ContadorPage(),
      // home: ListPage());
      // rutas
      initialRoute: '/',
      routes: getRouters(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta llamada: ${settings.name}');

        return MaterialPageRoute(builder: (BuildContext) => AlertPage());
      },
    );
  }
}
