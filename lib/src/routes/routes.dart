import 'package:flutter/material.dart';
import 'package:hello_word/src/pages/alert_page.dart';
import 'package:hello_word/src/pages/avatar_page.dart';
import 'package:hello_word/src/pages/card.dart';
import 'package:hello_word/src/pages/listPage.dart';

Map<String, WidgetBuilder> getRouters() {
  return <String, WidgetBuilder>{
    '/': (BuildContext) => ListPage(),
    'alert': (BuildContext) => AlertPage(),
    'avatar': (BuildContext) => AvatarPage(),
    'card': (BuildContext) => CardPage(),
  };
}
