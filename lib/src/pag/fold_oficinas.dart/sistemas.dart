import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/home_pages/home_page.dart';

class SistemasPage extends StatelessWidget {
  static final String routeName = 'sistemas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('División de estudios'),
        ),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 5),
                  _Name(),
                  _Funciones(),
                  _Contacto(),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }
}

Widget _Name() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 14),
    width: double.infinity,
    height: 160,
    color: Colors.purple[100],
    child: Column(
      children: <Widget>[
        SizedBox(height: 10),
        Text(
          'Jefa del Depto de Division de Estudios Profesionales:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          'M.F. Shelley Yesmin Castillo Charco',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    ),
  );
}

Widget _Funciones() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      width: double.infinity,
      height: 290,
      //color: Colors.yellowAccent,
      child: ListView(
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            'Dudas y/o tramites:',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 7),
          Text('> Residencia profesional',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text('> Titulación',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text('> Traslado estudiantil',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text('> Convalidación de estudios',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text('> Equivalencia de estudios',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text('> Movilidad estudiantil',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text('> Salida lateral',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text('> Cursos de verano',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text('> Inscripciones y reinscripciones',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
        ],
      ),
    ),
  );
}

Widget _Contacto() {
  return SafeArea(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: double.infinity,
      height: 80,
      color: Colors.yellow[50],
      child: Column(
        children: [
          Icon(
            Icons.mail,
            color: Colors.yellow[600],
            size: 35,
          ),
          SizedBox(height: 4),
          Text(
            'dep_cdaltamirano@tecnm.mx',
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
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
