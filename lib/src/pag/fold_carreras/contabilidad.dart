import 'package:flutter/material.dart';

class ContabilidadPage extends StatelessWidget {
  static final String routeName = 'contabilidad';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador Publico'),
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
    );
  }
}

Widget _TituloPage() {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: 70,
    color: Colors.grey[300],
    child: Text(
      'CONTADOR PUBLICO\nCOPU-2010-205',
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
      height: 220,
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
            'Formar profesionales competitivos, capaces de diseñar, establecer, aplicar, controlar, y evaluar sistemas de información financiera, administrativa y fiscal, dentro del marco legal vigente para la toma de desiciones de las entidades económicas nacionales e internacionales, con una actitud ética, crítica, emprendedora y de liderazgo, a través de la investigación y el uso de la tecnología de la información y comunicaciones, fomentando el desarrollo sustentable.',
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
        height: 220,
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
              '> Introducción a la contabilidad financiera\n> Administración\n> Álgebra lineal\n> Fundamentos de derecho\n> Desarrollo humano\n> Fundamentos de investigación',
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
              '> Contabilidad financiera I\n> Taller de ética\n> Cálculo diferencial e integral\n> Derecho mercantil\n> Dinámica social\n> Estadística administrativa I\n> Comunicación humana.',
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
              '> Contabilidad financiera II\n> Mercadotecnia\n> Matemáticas financieras\n> Derecho laboral y seguridad social\n> Gestión del talento humano\n> Estadística administrativa II\n> Taller de informática I.',
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
              '> Contabilidad de sociedades\n>Sistemas de costos históricos\n> Microeconomía\n> Derecho tributario\n> Análisis e interpretación de estados financieros\n> Taller de investigación I.\n> Desarrollo sustentable.',
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
              '> Contabilidad avanzada\n> Sistemas de costos predeterminados\n> Macroeconomía\n> Impuestos personas morales\n> Fundamentos de auditoría\n> Taller de investigación II\n> Administración de la producción y de las operacones.',
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
              '> Contabilidad internacional\n> Gestión y toma de decisiones\n> Administración estratégica\n> Impuestos personas físicas\n> Auditoría para efectos financieros\n> Economía internacional\n> Planeación financiera',
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
              '> Seminario de contaduría\n> Elaboración y evaluación de proyectos de inversión\n> Otros impuestos y contribuciones\n> Auditoría para efectos fiscales\n> Taller de informática II\n> Alternativas de inversión y financiamiento',
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
              '> No hay materias en el plan de estudio',
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
