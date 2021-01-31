import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/home_pages/home_page.dart';

class DepartamentosPage extends StatelessWidget {
  static final String routeName = 'departamentos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contactos'),
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
                  _Oficina2(),
                  _Funciones2(),
                  _Contacto2(),
                  _Oficina3(),
                  _Funciones3(),
                  _Contacto3(),
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
    height: 120,
    color: Colors.purple[100],
    child: Column(
      children: <Widget>[
        SizedBox(height: 10),
        Text(
          'Jefa del Depto de División de Estudios Profesionales:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          'M.F. Shelley Yesmin Castillo Charco',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16,
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
      height: 270,
      //color: Colors.yellowAccent,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            'Dudas y/o trámites sobre:',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 7),
          Text(
              '> Residencia profesional\n > Titulación\n > Traslado estudiantil\n > Convalidación de estudios\n > Equivalencia de estudios\n > Movilidad estudiantil\n > Salida lateral\n > Cursos de verano\n > Inscripciones y reinscripciones',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
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
      height: 150,
      //color: Colors.yellow[50],
      child: Column(
        children: [
          Icon(
            Icons.phone,
            color: Colors.greenAccent[400],
            size: 35,
          ),
          SizedBox(height: 4),
          Text(
            '7321087295',
            style: TextStyle(fontSize: 13),
          ),
          SizedBox(height: 10),
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

Widget _Oficina2() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 14),
    width: double.infinity,
    height: 100,
    color: Colors.green[500],
    child: Column(
      children: <Widget>[
        SizedBox(height: 10),
        Text(
          'Jefa de Servicios Escolares:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          'L.I. Verónica Reyes Reyes',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    ),
  );
}

Widget _Funciones2() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      width: double.infinity,
      height: 200,
      //color: Colors.yellowAccent,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            'Dudas y/o trámites sobre:',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 7),
          Text(
              '> Becas\n > Títulos\n > Cédulas\n > Certificados\n > Constancias\n > Fichas de nuevo ingreso ',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
        ],
      ),
    ),
  );
}

Widget _Contacto2() {
  return SafeArea(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: double.infinity,
      height: 150,
      //color: Colors.yellow[50],
      child: Column(
        children: [
          Icon(
            Icons.phone,
            color: Colors.greenAccent[400],
            size: 35,
          ),
          SizedBox(height: 4),
          Text(
            '7671040821',
            style: TextStyle(fontSize: 13),
          ),
          SizedBox(height: 10),
          Icon(
            Icons.mail,
            color: Colors.yellow[600],
            size: 35,
          ),
          SizedBox(height: 4),
          Text(
            'se_cdaltamirano@tecnm.mx',
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    ),
  );
}

Widget _Oficina3() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 14),
    width: double.infinity,
    height: 120,
    color: Colors.blue[100],
    child: Column(
      children: <Widget>[
        SizedBox(height: 10),
        Text(
          'Jefe de Gestión Tecnológica y Vinculación:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          'M.F. Esequiel Santiago Santiago',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    ),
  );
}

Widget _Funciones3() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      width: double.infinity,
      height: 140,
      //color: Colors.yellowAccent,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            'Dudas y/o trámites sobre:',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 7),
          Text(
              ' > Servició Social\n > Convenios para Residencia\nProfesional y Servició Social ',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
        ],
      ),
    ),
  );
}

Widget _Contacto3() {
  return SafeArea(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: double.infinity,
      height: 150,
      //color: Colors.yellow[50],
      child: Column(
        children: [
          Icon(
            Icons.phone,
            color: Colors.greenAccent[400],
            size: 35,
          ),
          SizedBox(height: 4),
          Text(
            '7671137755',
            style: TextStyle(fontSize: 13),
          ),
          SizedBox(height: 10),
          Icon(
            Icons.mail,
            color: Colors.yellow[600],
            size: 35,
          ),
          SizedBox(height: 4),
          Text(
            'vin_cdaltamirano@tecnm.mx',
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    ),
  );
}
