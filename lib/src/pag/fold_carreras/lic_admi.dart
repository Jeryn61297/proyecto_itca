import 'package:flutter/material.dart';

class LicadmiPage extends StatelessWidget {
  static final String routeName = 'licadmi';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lic. Administración'),
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
    height: 80,
    color: Colors.grey[300],
    child: Text(
      'LICENCIATURA EN ADMINISTRACIÓN\nLADM-2010-234',
      style: TextStyle(
          color: Colors.black, fontSize: 21, fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,
    ),
  );
}

Widget _Objetivo() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      width: double.infinity,
      height: 170,
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
            'Formar profesionales de la administración comprometidos con las demandas y oportunidades del entorno, con una visión estratégica, humanista y global, que actúen como agentes de cambio, a través del diseño, innovación y dirección en organizaciones.',
            style: TextStyle(color: Colors.black, fontSize: 16),
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
              '> Teoría general de la administración\n> Informática para la administración\n> Taller de ética\n> Fundamentos de investigación\n> Matemáticas aplicadas a la administración\n> Contabilidad general',
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
              '> Función administrativa I\n> Estadística para la administración I\n> Derecho laboral y seguridad social\n> Comunicación corporativa\n> Taller de desarrollo humano\n> Costos de manufactura',
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
              '> Función administrativa II\n> Estadística para la administración II\n> Derecho empresarial\n> Comportamiento organizacional\n> Dinámica social\n> Contabilidad gerencial',
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
              '> Gestión estratégica del capital humano I\n> Procesos estructurales\n> Métodos cuantitativos para la administración\n> Fundamentos de mercadotecnia\n> Economía empresarial\n> Matemáticas financieras',
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
              '> Gestión estratégica del capital humano II\n> Derecho fiscal\n> Mezcla de mercadotecnia\n> Macroeconomía\n> Administración financiera I\n> Desarrollo sustentable',
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
              '> Gestión de la retribución\n> Producción\n> Taller de investigación I\n> Sistemas de información de mercadotecnia\n> Innovación y emprendedurismo\n> Administración financiera II',
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
              '> Plan de negocios\n> Procesos de dirección\n> Taller de investigación II\n> Administración de la calidad\n> Economía internacional\n> Diagnóstico y evaluación empresarial',
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
              '> Consultoría empresarial\n> Formulación y evaluación de proyectos\n> Desarrollo organizacional',
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
