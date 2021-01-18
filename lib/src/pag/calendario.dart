import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/home_pages/home_page.dart';

class CalendarioPage extends StatelessWidget {
  static final String routeName = 'calendario';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Calendario escolar'),
        ),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                children: <Widget>[
                  //_Titulo(),
                  //_Image1(),
                  _Image2(),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }
}

Widget _Titulo() {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: 60,
    //color: Colors.red,
    child: Text(
      'Calendario',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
    ),
  );
}

Widget _Image2() {
  return Container(
    width: double.infinity,
    height: 650,
    //color: Colors.yellow,
    child: Image(
      image: AssetImage('assets/images/1000.jpg'),
    ),
  );
}

Widget _bottomNavigationBar(context) {
  return FloatingActionButton(
    child: Icon(
      Icons.home,
      color: Colors.white,
      size: 35,
    ),
    onPressed: () => Navigator.pushNamed(context, HomePage.routeName),
  );
}
