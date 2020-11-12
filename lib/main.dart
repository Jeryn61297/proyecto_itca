import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/pages/home_page.dart';
import 'package:proyecto_itca/src/pages/scroll_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ITCA',
      initialRoute: ScrollPage.routeName,
      routes: {
        HomePage.routeName: (BuildContext context) => HomePage(),
        ScrollPage.routeName: (BuildContext context) => ScrollPage(),
      },
    );
  }
}
