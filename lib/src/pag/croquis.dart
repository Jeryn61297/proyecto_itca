import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/home_pages/home_page.dart';

class CroquisPage extends StatelessWidget {
  static final String routeName = 'croquis';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Croquis del Tec'),
        ),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              //padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[_Titulo(), _Mapa(), _Datos()],
              ),
            )
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }
}

Widget _Titulo() {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: 70,
    child: Text(
      'Imagen satelital',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
    ),
  );
}

Widget _Mapa() {
  return Container(
    width: double.infinity,
    height: 350,
    child: Image(
      image: AssetImage('assets/images/croquis3.jpg'),
    ),
  );
}

Widget _Datos() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
    width: 400,
    height: 200,
    child: Row(
      children: <Widget>[
        Column(
          children: [
            Text(
              '1.- Edificio 1000 \n2.- Edificio 700 \n3.- Edificio 100 \n4.- Edificio 200 \n5.- Biblioteca \n6.- Edificio 400 \n7.- Laboratorios',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Text(
              '8.- Edificio 1200 \n9.- Cafeteria \n10.- SS multiples \n11.- Cancha \n12.- Explanada \n13.- Cancha \n  Futbol',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
          ],
        )
      ],
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
