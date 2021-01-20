import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/home_pages/home_page.dart';

class SistemasPage extends StatelessWidget {
  static final String routeName = 'sistemas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sistemas y Compututación'),
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
    color: Colors.blue[50],
    child: Column(
      children: <Widget>[
        SizedBox(height: 10),
        Text(
          'Jefa del Depto de Sistemas y computación:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          'MTI. Lucero de Jesus Ascencio Antúnez',
          style: TextStyle(
            color: Colors.black,
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
      height: 410,
      //color: Colors.yellowAccent,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            'Funciones',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 7),
          Text(
              '> Difundir la oferta de capacitación a los aprendientes sobre los cursos MOOCS.',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text(
              '> Organizar y cordinar la asignación de facilitadores, aulas y horarios para la atención del servcio.',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text(
              '> Cordinar, controlar y dar seguimiento a los programas de enseñanza-aprendizaje de lenguas extranjeras.',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text(
              '> Verificar que los y las facilitadores utilicen la metodologá y los recursos didácticos descritos en la instrumentación de enseñanza',
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
            'lucerodejesus.aa@cdaltamirano.tecnm.mx',
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
