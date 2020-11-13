import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';

class OficinasPage extends StatelessWidget {
  static final String routeName = 'oficinas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            _fondoApp(),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[_titulos(), _botonesRedondeados()],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

//---Estilo del fondo de la pagina
  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

// CAJA ROSA ROTADA
    final cajaRosa = Transform.rotate(
        angle: -pi / 5.0,
        child: Container(
          height: 300.0,
          width: 300.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]),
          ),
        ));

    return Stack(
      children: <Widget>[gradiente, Positioned(top: -100.0, child: cajaRosa)],
    );
  }

//---TITULO DE LA PAGINA
  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Oficinas',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text(
                'El TecNM Campus Cd. Altamirano cuenta con los departamentos siguientes:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ))
          ],
        ),
      ),
    );
  }

//---BottomNavigator
  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.white70,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30.0), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, size: 30.0), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle, size: 30.0),
              title: Container()),
        ],
      ),
    );
  }

  Widget _botonesRedondeados() {
    return Table(
      children: [
        TableRow(children: [
          _crearBotonRedondeado(
              Colors.blue, Icons.school, 'Sistemas y Computacion'),
          _crearBotonRedondeado(
              Colors.orange, Icons.school, 'Desarrollo Academico'),
        ]),
        TableRow(children: [
          _crearBotonRedondeado(Colors.red, Icons.school, 'Gestion'),
          _crearBotonRedondeado(
              Colors.purple, Icons.school, 'Servicios Escolares'),
        ]),
        TableRow(children: [
          _crearBotonRedondeado(
              Colors.green, Icons.school, 'Comunicación y Difusion'),
          _crearBotonRedondeado(
              Colors.lime, Icons.school, 'Recursos Materiales'),
        ])
      ],
    );
  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
      child: Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: color,
              radius: 35.0,
              child: Icon(
                icono,
                color: Colors.white,
                size: 30.0,
              ),
            ),
            Text(texto, style: TextStyle(color: color)),
            SizedBox(
              height: 5.0,
            )
          ],
        ),
      ),
    );
  }
}
