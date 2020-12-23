import 'package:flutter/material.dart';

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
    );
  }
}

Widget _Titulo() {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: 70,
    //color: Colors.blue[100],
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
    //color: Colors.black12,
    child: Image(
      image: AssetImage('assets/images/croquis.jpg'),
    ),
  );
}

Widget _Datos() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
    //alignment: Alignment.centerLeft,
    width: 400,
    height: 200,
    //color: Colors.grey,
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
