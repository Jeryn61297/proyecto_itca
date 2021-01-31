import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:proyecto_itca/src/home_pages/home_page.dart';

class InforPage extends StatelessWidget {
  static final String routeName = 'infor';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Información'),
        ),
        body: ListView(
          children: <Widget>[
            _TituloPage(),
            _Foto(),
            _Direccion(),
            SizedBox(height: 15),
            _Datos(),
            _Contacto(),
          ],
        ),
        bottomNavigationBar: _bottomNavigationBar(context));
  }
}

Widget _TituloPage() {
  return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 100,
      //color: Colors.green,
      child: Text('  Instituto Tecnológico \n     de Cd. Altamirano',
          style: TextStyle(
              color: Colors.black, fontSize: 26, fontWeight: FontWeight.w500)));
}

Widget _Foto() {
  return Container(
    width: double.infinity,
    height: 200,
    //color: Colors.grey,
    child: (Image(
      image: AssetImage('assets/itca.jpg'),
    )),
  );
}

Widget _Direccion() {
  return Container(
    width: double.infinity,
    height: 60,
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 26),
          child: Text(
              '    Av. Pungarabato poniente S/n, colonia\nMorelos, Municipio de Cd. Altamirano, Gro.'),
        ),
      ],
    ),
    //color: Colors.blue,
  );
}

Widget _Datos() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 25),
    child: Container(
      width: double.infinity,
      height: 460,
      //color: Colors.blue[50],
      child: Column(
        children: [
          Text(
            'Misión',
            style: TextStyle(
              color: Colors.black,
              fontSize: 21,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Formar profesionales competitivos, con sentido humanista que contribuyan al desarrollo de país.',
            style: TextStyle(color: Colors.black, fontSize: 14),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 15),
          Text(
            'Visión',
            style: TextStyle(
                color: Colors.black, fontSize: 21, fontWeight: FontWeight.w700),
          ),
          Text(
            'Ser una Institución educativa de alto desempeño con valores declarados que impulse su desarrollo sostenido a través de la mejora continua.',
            style: TextStyle(color: Colors.black, fontSize: 14),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 15),
          Text(
            'Forma de pago',
            style: TextStyle(
                color: Colors.black, fontSize: 21, fontWeight: FontWeight.w700),
          ),
          Text(
            'Los depósitos dirigidos al Instituto Tecnológico de  Cd. Altamirano deberán ser realizados al banco Santander S.A. al número de cuenta: 65-50760541-2 Clave interbancaria: 014266655076054126 \nTitular: TECNM INSTITUTO TECNOLÓGICO DE CD. ALTAMIRANO ',
            style: TextStyle(color: Colors.black, fontSize: 14),
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
        height: 175,
        //color: Colors.yellow[50],
        child: Row(children: <Widget>[
          Column(
            children: [
              //-ICONO1---------------------
              Icon(
                Icons.phone_android,
                color: Colors.black54,
                size: 35,
              ),
              SizedBox(height: 8),
              Text(
                '767-672-1213',
                style: TextStyle(fontSize: 13),
              ),

              SizedBox(height: 15),
              //-ICONO2-------------------------
              Icon(
                Icons.phone,
                color: Colors.lightGreen,
                size: 35,
              ),
              SizedBox(height: 4),
              Text('767-104-7475'),
            ],
          ),
          SizedBox(width: 25),
          Column(
            children: [
              //-ICONO3----------------------------
              Icon(
                Icons.mail,
                color: Colors.yellow,
                size: 35,
              ),
              SizedBox(height: 4),
              Text(
                'cd_altamirano@tecnm.mx',
                style: TextStyle(fontSize: 13),
              ),
              SizedBox(height: 8),
              //-ICONO4----------------------------
              Icon(
                Icons.computer,
                color: Colors.blue,
                size: 35,
              ),
              SizedBox(height: 4),
              Text(
                'Instituto Tecnológico \n  de Cd Altamirano',
                style: TextStyle(fontSize: 13),
              ),
            ],
          )
        ])),
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
