import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/pag/fold_carreras/agronomia.dart';
import 'package:proyecto_itca/src/pag/fold_carreras/biologia.dart';
import 'package:proyecto_itca/src/pag/fold_carreras/contabilidad.dart';
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
    );
  }
}

Widget _TituloPage() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 150,
        //color: Colors.grey[400],
        child: Text(
          'El TecNM Campus Cd. Altamirano cuenta con las siguientes carreras:',
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.w400),
          textAlign: TextAlign.justify,
        )),
  );
}

Widget _Botones(context) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 5),
    child: Container(
        height: 390,
        width: double.infinity,
        color: Colors.cyan[100],
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 4 / 3,
          children: <Widget>[
            Muestra(
              child: RaisedButton(
                child: Text(
                  'Ing Informatica',
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
                child: Text('Contador Publico'),
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
                  'Ing Agronomia',
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
                child: Text('Lic Biologia'),
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
                  'Ing Gestion\nEmpresarial',
                ),
                onPressed: () {},
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
