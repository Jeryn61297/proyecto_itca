import 'package:flutter/material.dart';

import 'package:proyecto_itca/src/pag/carreras.dart';
import 'package:proyecto_itca/src/pag/oficinas.dart';

import 'infor_page.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ITCA',
          style: TextStyle(color: Colors.white, fontSize: 25.0),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/itca.jpg'), fit: BoxFit.cover)),
            ),
          )
        ],
      ),
      drawer: _crearMenu(context),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Colors.blue[400],
          //canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.white70,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 37.0), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today, size: 30.0), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle, size: 30.0),
              title: Container()),
        ],
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
              'cd_alta@yahoo.com',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            currentAccountPicture: new CircleAvatar(
              backgroundImage: new NetworkImage(
                  'https://scontent.fcvj2-1.fna.fbcdn.net/v/t1.0-9/124026147_3384021368314323_7951238793877942294_n.jpg?_nc_cat=109&ccb=2&_nc_sid=09cbfe&_nc_eui2=AeFciWXpeaLEMUOHPijOx8iFhg1SPPg7vsyGDVI8-Du-zEKmGi7iOikL-7zWo_2XuijXWprZ6cM04VJuguOatwLP&_nc_ohc=ozNKIw9FT1gAX9w-hlP&_nc_ht=scontent.fcvj2-1.fna&oh=cd4f4baa2f9bbadbf0ec4c610544f456&oe=5FD0BBC6'),
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
            onTap: () {},
          ),
          Divider(),
          //----------------------------------------------
          ListTile(
            leading: Icon(Icons.map, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Nuestro Tec'),
            subtitle: Text('Croquis'),
            onTap: () {},
          ),
          Divider(),
          //----------------------------------------------
          ListTile(
            leading: Icon(Icons.my_location, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Ubicación'),
            subtitle: Text('Como llegar'),
            onTap: () {},
          ),
          Divider(),
          //----------------------------------------------
          ListTile(
            leading: Icon(Icons.people, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Comite estudiantil'),
            subtitle: Text('Estudiantes unidos'),
            onTap: () {},
          ),
          Divider(),
          //----------------------------------------------
          ListTile(
            leading: Icon(Icons.request_page, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Tarifa de servicios'),
            subtitle: Text('Precios'),
            onTap: () {},
          ),
          Divider(),
          //----------------------------------------------
          ListTile(
            leading: Icon(Icons.calendar_today, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Calendario escolar'),
            subtitle: Text(' '),
            onTap: () {},
          ),
          Divider(),
          //----------------------------------------------
          ListTile(
            leading: Icon(Icons.menu_book, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Curso capacitación'),
            subtitle: Text('Lengua extranjera Ingles'),
            onTap: () {},
          ),
          Divider(),
          //----------------------------------------------
          ListTile(
            leading: Icon(Icons.local_florist, color: Colors.lightBlue),
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text('Servicio de venta'),
            subtitle: Text('Plantas regionales'),
            onTap: () {},
          ),
          Divider()
          //----------------------------------------------
        ],
      ),
    );
  }
}
