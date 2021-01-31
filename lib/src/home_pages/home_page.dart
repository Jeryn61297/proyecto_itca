//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:proyecto_itca/src/pag/curso_ingles.dart';
import 'package:proyecto_itca/src/pag/fold_carreras/carreras.dart';
import 'package:proyecto_itca/src/pag/fold_oficinas.dart/oficinas.dart';
import 'package:proyecto_itca/src/pag/infor.dart';
import 'package:proyecto_itca/src/pag/inscripciones.dart';

import 'package:proyecto_itca/src/pag/calendario.dart';
import 'package:proyecto_itca/src/pag/croquis.dart';
import 'package:proyecto_itca/src/pag/tarifas.dart';
import 'package:proyecto_itca/src/pag/venta_plantas.dart';

import 'dis_pantalla.dart';
import 'header_appbar.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final String routes = 'infor';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [_disPantalla(context), _crearMenu(context)],
      ),
    );
  }

  Widget _disPantalla(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(left: 10, top: 0, right: 23),
                height: 240,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF2196F3),
                      Color(0xFF64B5F6),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                    ),
                    SizedBox(height: 20),
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            "assets/images/itca.png",
                            width: 180,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topLeft,
                          ),
                          Positioned(
                            top: 50,
                            //left: 0,
                            right: 0,
                            child: Text(
                              "  Tec   \n  Altamirano  ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 27.0,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 30,
                              height: 30,
                              child: Icon(
                                Icons.dehaze,
                                //Icons.arrow_back_outlined,
                                color: Colors.black54,
                                size: 38,
                              ),
                            ),
                          ),
                          Container(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Prácticas estudiantiles\n",
                              style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900),
                            ),
                            TextSpan(
                              text: "Forjando los profesionistas del mañana ",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 0),
            HeaderAppbar()
          ],
        ),
      ),
    );
  }

  Drawer _crearMenu(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: new Text(
              'TecNM Campus Cd. Altamirano',
              style: TextStyle(color: Colors.black54, fontSize: 18.0),
            ),
            accountEmail: new Text(
              'cd_altamirano@tecnm.mx',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            currentAccountPicture: new CircleAvatar(
              child: Image.asset('assets/images/escudo.png'),
            ),
          ),
          //----------------------------------------------
          ListTile(
              leading: Icon(Icons.assignment, color: Colors.lightBlue),
              trailing: Icon(Icons.keyboard_arrow_right),
              title: Text('Información'),
              subtitle: Text('Informacion importante'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => InforPage()));
              }),
          Divider(),
          //----------------------------------------------
          ListTile(
            leading: Icon(Icons.book, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Oferta educativa'),
            subtitle: Text('Carreras'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => CarrerasPage()));
            },
          ),
          Divider(),
          //----------------------------------------------

          ListTile(
            leading: Icon(Icons.business_center, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Oficinas'),
            subtitle: Text('Departamentos del Tec'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => OficinasPage()));
            },
          ),
          Divider(),
          //----------------------------------------------
          ListTile(
            leading: Icon(Icons.assignment_ind, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Inscripciones'),
            subtitle: Text('Reinscripciones'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => InscripcionesPage()));
            },
          ),
          Divider(),
          //----------------------------------------------
          ListTile(
            leading: Icon(Icons.map, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Nuestro Tec'),
            subtitle: Text('Croquis'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => CroquisPage()));
            },
          ),
          Divider(),
          //----------------------------------------------
          /*
          ListTile(
            leading: Icon(Icons.my_location, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Ubicación'),
            subtitle: Text('Como llegar'),
            onTap: () {},
          ), */
          //Divider(),

          //----------------------------------------------
          /*
          ListTile(
            leading: Icon(Icons.people, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Comite estudiantil'),
            subtitle: Text('Estudiantes unidos'),
            onTap: () {},
          ),
          Divider(), */
          //----------------------------------------------
          ListTile(
            leading: Icon(Icons.request_page, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Tarifa de servicios'),
            subtitle: Text('Precios'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => TarifasPage()));
            },
          ),
          Divider(),
          //----------------------------------------------
          ListTile(
            leading: Icon(Icons.calendar_today, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Calendario escolar'),
            subtitle: Text(' '),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => CalendarioPage()));
            },
          ),
          Divider(),
          //----------------------------------------------
          ListTile(
            leading: Icon(Icons.menu_book, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Curso capacitación'),
            subtitle: Text('Lengua extranjera Ingles'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => InglesPage()));
            },
          ),
          Divider(),
          //----------------------------------------------
          ListTile(
            leading: Icon(Icons.local_florist, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Servicio de venta'),
            subtitle: Text('Plantas regionales'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (BuildContext context) => VentaPlantasPage()));
            },
          ),
          Divider()
          //----------------------------------------------
        ],
      ),
    );
  }
}
