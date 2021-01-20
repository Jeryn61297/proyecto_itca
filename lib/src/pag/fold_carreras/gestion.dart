import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/home_pages/home_page.dart';

class GestionPage extends StatelessWidget {
  static final String routeName = 'gestion';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gestión Empresarial'),
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
      'INGENIERÍA EN GESTIÓN\nEMPRESARIAL',
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
            'Formar profesionales que contribuyan a la gestión de empresas e innovación de procesos; así como al diseño, implementación y desarrollo de sistemas estratégicos de negocios, optimizando recursos en un entorno global, con ética y responsabilidad social',
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
              '> Fundamentos de investigación\n> Cálculo diferencial\n> Desarrollo humano\n> Fundamentos de gestión empresarial\n> Fundamentos de física\n> Fundamentos de química',
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
              '>  Software de aplicación ejecutivo\n> Cálculo Integral\n> Contabilidad orientada a los negocios\n> Dinámica social\n> Legislación laboral',
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
              '> Marco legal de las organizaciones\n> Probabilidad y estadística descriptiva\n> Costos empresariales\n> Habilidades directivas I\n> Economía empresarial\n> Álgebra lineal',
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
              '> Ingeniería económica\n> Estadística inferencial I\n> Instrumentos de presupuestación empresarial\n> Habilidades directivas II\n> Entorno macroeconómico\n> Investigación de operaciones',
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
              '> Finanzas en las organizaciones\n> Estadística inferencial II\n> Ingeniería de procesos\n> Gestíon del capital humano\n> Taller de investigación I\n> Mercadotecnia',
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
              '> Administración  de la salud y seguridad ocupacional\n> El emprendedor y la innovación\n> Gestión de la producción I\n> Diseño organizacional\n> Taller de investigación II\n> Sistemas de información de mercadotecnia',
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
              '> Calidad aplicada a la gestión empresarial\n> Plan de negocios\n> Gestión de la producción II\n> Gestión estratégica\n> Desarrollo sustentable\n> Mercadotecnia Electronica',
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
              '> Cadena de suministros',
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
