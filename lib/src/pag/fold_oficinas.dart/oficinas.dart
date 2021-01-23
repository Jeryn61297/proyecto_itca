import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/home_pages/home_page.dart';
import 'package:proyecto_itca/src/pag/fold_oficinas.dart/enactus.dart';
import 'package:proyecto_itca/src/pag/fold_oficinas.dart/sistemas.dart';

class OficinasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Oficinas'),
        ),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _TituloPage(),
                  _Botones(context),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }
}

Widget _TituloPage() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 23),
    child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 200,
        //color: Colors.grey[400],
        child: Text(
          'El TecNM Campus Cd. Altamirano continúa con sus actividades de manera virtual y ponemos a su disposición los contactos para atenderlos en sus dudas y/o tramites.',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
          textAlign: TextAlign.justify,
        )),
  );
}

Widget _Botones(context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 5),
    child: Container(
        height: 160,
        width: double.infinity,
        color: Colors.cyan[100],
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 4 / 3,
          children: <Widget>[
            Muestra(
              child: RaisedButton(
                child: Text(
                  'Oficinas\nITCA',
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              DepartamentosPage()));
                },
                color: Colors.purple[200],
                textColor: Colors.white,
              ),
            ),
            Muestra(
              child: RaisedButton(
                child: Text('Enactus\nHUB ITCA'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => EnactusPage()));
                },
                color: Colors.blue[400],
                textColor: Colors.white,
              ),
            ),
          ],
        )),
  );
}

class Muestra extends StatelessWidget {
  final Widget child;

  const Muestra({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            this.child,
            SizedBox(height: 10),
            Icon(
              Icons.business_center_rounded,
              color: Colors.blue[900],
              size: 60,
            )
          ],
        ),
      ),
    );
  }
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
