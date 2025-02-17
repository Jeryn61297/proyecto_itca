import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/home_pages/home_page.dart';
import 'package:proyecto_itca/src/pag/fold_carreras/agronomia.dart';
import 'package:proyecto_itca/src/pag/fold_carreras/biologia.dart';
import 'package:proyecto_itca/src/pag/fold_carreras/contabilidad.dart';
import 'package:proyecto_itca/src/pag/fold_carreras/gestion.dart';
import 'package:proyecto_itca/src/pag/fold_carreras/informatica.dart';
import 'package:proyecto_itca/src/pag/fold_carreras/ing_admi.dart';
import 'package:proyecto_itca/src/pag/fold_carreras/lic_admi.dart';

class CarrerasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Oferta Educativa'),
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
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 160,
        //color: Colors.grey[400],
        child: Text(
          'El TecNM Campus Cd. Altamirano cuenta con las siguientes carreras:',
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
        height: 450,
        width: double.infinity,
        color: Colors.cyan[100],
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 4 / 3,
          children: <Widget>[
            Muestra(
              child: RaisedButton(
                child: Text(
                  'Ing Informática',
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              InformaticaPage()));
                },
                color: Colors.blue[400],
                textColor: Colors.white,
              ),
            ),
            Muestra(
              child: RaisedButton(
                child: Text('Contador Público'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ContabilidadPage()));
                },
                color: Colors.yellow[500],
                textColor: Colors.grey[700],
              ),
            ),
            Muestra(
              child: RaisedButton(
                child: Text(
                  'Ing Administración',
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => IngadmiPage()));
                },
                color: Colors.red,
                textColor: Colors.white,
              ),
            ),
            Muestra(
              child: RaisedButton(
                child: Text('Lic Administración'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => LicadmiPage()));
                },
                color: Colors.orange,
                textColor: Colors.white,
              ),
            ),
            Muestra(
              child: RaisedButton(
                child: Text(
                  'Ing Agronomía',
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => AgronomiaPage()));
                },
                color: Colors.green[600],
                textColor: Colors.white,
              ),
            ),
            Muestra(
              child: RaisedButton(
                child: Text('Lic Biología'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => BiologiaPage()));
                },
                color: Colors.lime,
                textColor: Colors.white,
              ),
            ),
            Muestra(
              child: RaisedButton(
                child: Text(
                  'Ing Gestión\nEmpresarial',
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => GestionPage()));
                },
                color: Colors.purple,
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
              Icons.school,
              color: Colors.purple[900],
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
