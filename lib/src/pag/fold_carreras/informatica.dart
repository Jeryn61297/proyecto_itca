import 'package:flutter/material.dart';

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
                SizedBox(height: 9),
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
      height: 230,
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
          SizedBox(height: 22),
          Text(
            'Plan de estudio',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    ),
  );
}

Widget _Semestres() {
  return SafeArea(
    child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        width: double.infinity,
        height: 300,
        color: Colors.grey,
        child: Row(children: <Widget>[
          Column(
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
              SizedBox(height: 14),
              Text(
                'SEMESTRE 2',
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
            ],
          ),
        ])),
  );
}
