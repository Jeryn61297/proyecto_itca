import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/home_pages/home_page.dart';

class InformaticaPage extends StatelessWidget {
  static final String routeName = 'informatica';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Informática'),
        ),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 2),
                  _TituloPage(),
                  _Objetivo(),
                  _Plan(),
                  _Semestres(),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }
}

Widget _TituloPage() {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: 80,
    color: Colors.grey[300],
    child: Text(
      'INGENIERÍA INFORMÁTICA\nIINF-2010-220',
      style: TextStyle(
          color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,
    ),
  );
}

Widget _Objetivo() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      width: double.infinity,
      height: 290,
      //color: Colors.yellowAccent,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            'Objetivo General',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
            'Formar profesionales competentes en el diseño, desarrollo, implmentación y administración de proyectos informáticos con una visión sistématica, tecnológica y estratégica; ofreciendo soluciones innovadoras e integrales a las organizaciones de acuerdo con las necesidades actuales; comprometidos con su entorno, desempeñandose con actitud ética, emprendedora y de liderazgo.',
            style: TextStyle(color: Colors.black, fontSize: 15),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    ),
  );
}

Widget _Plan() {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: 40,
    child: Text(
      'PLAN DE ESTUDIOS',
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,
    ),
  );
}

Widget _Semestres() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
    child: Container(
        height: 280,
        width: double.infinity,
        child: ListView(
          children: [
            Text(
              'SEMESTRE 1',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> Administración para Informática.\n> Fundamentos de investigación.\n> Fundamentos de programación.\n> Taller de ética.\n> Cálculo diferencial.\n> Desarrollo sustentable. ',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 2',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> Administración de los recursos y función informatica.\n> Física para informática.\n> Programación orientada a objetos.\n> Contabilidad financiera.\n> Cálculo integral.\n> Matemáticas discretas. ',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 3',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> Fundamentos de sistemas de información.\n> Sistemas electrónicos para informática.\n> Estructura de datos.\n> Costos empresariales.\n> Álgebra lineal.\n> Probabilidad y estadística. ',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 4',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> Taller de investigación I.\n> Arquitectura de computadoras.\n> Administración y organización de datos.\n> Fundamentos de telecomunicaciones.\n> Sistemas operativos I.\n> Investigación de operaciones.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 5',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> Análisis y modelado de sistemas de información.\n> Tecnologías e interfaces de computadoras.\n> Fundamentos de bases de datos.\n> Redes de computadoras.\n> Sistemas operativos II.\n> Taller de legislación informática.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 6',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> Desarrollo e implementación de sistemas de información.\n> Auditoría en informática.\n> Taller de base de datos.\n> Interconectividad de redes.\n> Desarrollo de aplicaciones web.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 7',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> Calidad en los sistemas de información.\n> Fundamentos de gestión de servicios de TI.\n> Tópicos de bases de datos.\n> Admininstración de servidores.\n> Programación en ambiente cliente/servidor.\n> Taller de investigación II.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 8',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> Taller de emprendedores\n> Estrategias de gestión de servicios de TI.\n> Inteligencia de negocios.\n> Desarrollo de aplicaciones para dispositivos móviles.\n> Seguridad informatica.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 9',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> Residencia profesional.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        )),
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
