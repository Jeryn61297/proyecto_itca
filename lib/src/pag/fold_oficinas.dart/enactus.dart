import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/home_pages/home_page.dart';

class EnactusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Enactus'),
        ),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[_TituloPage(), _Objetivo(), _Contacto()],
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
    color: Colors.orange[300],
    child: Text(
      'ENACTUS\nHUB-ITCA',
      style: TextStyle(
          color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,
    ),
  );
}

Widget _Objetivo() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      width: double.infinity,
      height: 620,
      //color: Colors.yellowAccent,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            'El Enectus HUB-ITCA hace la cordial invitación para que lleves a cabo tu idea de negocio en base como aportación a la sociedad y medio ambiente, donde uno d elos requisitos primordiales es que el equipo de trabajo conste de seis alumnos multidisciplinarios de los cuales desempeñaran diversos roles.',
            style: TextStyle(color: Colors.black, fontSize: 15),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 10),
          Text(
            'Aunado a esto obtendran los siguientes beneficios:',
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 10),
          Text(
            'A) Los estudiantes de 2º, 4º, 6º, 8º semestres, que realicen un proyecto y este sea aprovado, acreditaran 2 creditos de actividades complementarias',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 10),
          Text(
            'B) Para los estudiantes de 6º semestre que participen y obtengan resultados favorables, acreditaran su Servicio Social.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 10),
          Text(
            'C) Adicionalmente como lo dispone el anexo 1, Documento de apoyo para la Cumbre Estudiantil de Negocios e Innovación Económica (CENITAE) 2021, los proyectos que sean participes en la etapa nacional acreditaran su Residencia profesional.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
            textAlign: TextAlign.justify,
          ),
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
      height: 170,
      color: Colors.yellow[50],
      child: Column(
        children: [
          Icon(
            Icons.phone,
            color: Colors.greenAccent[400],
            size: 35,
          ),
          SizedBox(height: 4),
          Text(
            '7321145134',
            style: TextStyle(fontSize: 13),
          ),
          SizedBox(height: 10),
          Icon(
            Icons.computer,
            color: Colors.blue[500],
            size: 35,
          ),
          SizedBox(height: 4),
          Text(
            'Enactus HUB ITCA',
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
