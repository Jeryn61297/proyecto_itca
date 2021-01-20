import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/home_pages/home_page.dart';

class BiologiaPage extends StatelessWidget {
  static final String routeName = 'biologia';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lic. Biología'),
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
    height: 65,
    color: Colors.grey[300],
    child: Text(
      'LICENCIATURA EN BIOLOGÍA\nLBIO-2010-233',
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
      height: 240,
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
            'Formar profesionistas en el campo de la biología con las competencias necesarias para desarrollarse en diferentes ámbitos e integrarse en equipos multidisciplinarios; contribuyendo al manejo para la conservación de la biodiversidad, con ética y respeto a la diversidad cultural.',
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
        height: 330,
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
              '> Edafología\n> Química\n> Biología I\n> Matemáticas\n> Taller de ética\n> Fundamentos de investigación',
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
              '> Bioestadística I\n> Protozoología\n> Biología II\n> Biofísica\n> Bioquímica\n> Meteorología y climatología',
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
              '> Bioestadística II\n> Invertebrados no artrópodos\n> Botánica estructural\n> Micología\n> Biología celular',
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
              '> Biología del desarrollo animal\n> Artrópodos no insectos\n> Botánica criptogámica\n> Microbiología\n> Genética',
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
              '> Fisiología vegetal\n> Entomología\n> Botánica Fanerogámica\n> Genéticamolecular\n> Desarrollo sustentable',
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
              '> Fisiología animal\n> Cordados\n> Taller de divulgación científica y educación ambiental\n> Ecología I\n> Contaminación e impacto ambiental\n> Taller de investigación I',
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
              '> Evolución\n> Biogeografía\n> Taller de desarrollo empresarial\n> Ecología II\n> Taller de investigación II',
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
              '> Acuacultura\n> Uso de la biodiversidad\n> Manejo y producción de biofertilizantes\n> Taller de Des. empresarial\n> Taller de investigación II\n> Control biológico',
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
