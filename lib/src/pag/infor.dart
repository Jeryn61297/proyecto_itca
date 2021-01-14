import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class InforPage extends StatelessWidget {
  static final String routeName = 'infor';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información'),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _TituloPage(),
                _Foto(),
                _Direccion(),
                _Datos(),
                _Contacto(),
                _Barra()
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
      height: 100,
      //color: Colors.green,
      child: Text('  Instituto Tecnológico \n     de Cd. Altamirano',
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.w500)));
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
    height: 50,
    child: Column(
      children: [
        Text(
            ' Av. Pungarabato poniente S/n, colonia Morelos, \n                Municipio de Cd. Altamirano, Gro.'),
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
      height: 400,
      //color: Colors.blue[50],
      child: Column(
        children: [
          Text(
            'Misión',
            style: TextStyle(
              color: Colors.black,
              fontSize: 29,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            'Formar profesionales competitivos, con sentido humanista que contribuyan al desarrollo de país.',
            style: TextStyle(color: Colors.black, fontSize: 16),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 15),
          Text(
            'Visión',
            style: TextStyle(
                color: Colors.black, fontSize: 29, fontWeight: FontWeight.w700),
          ),
          Text(
            'Ser una Institución educativa de alto desempeño con valores declarados que impulse su desarrollo sostenido a través de la mejora continua.',
            style: TextStyle(color: Colors.black, fontSize: 16),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 15),
          Text(
            'Forma de pago',
            style: TextStyle(
                color: Colors.black, fontSize: 29, fontWeight: FontWeight.w700),
          ),
          Text(
            'Los depositos dirigidos al Instituto Tecnológico de  Cd. Altamirano deberan ser realizados al banco Santander S.A. al número de cuenta: 65-50760541-2 Clave interbancaria: 014266655076054126 \nTitular: TECNM INSTITUTO TECNOLÓGICO DE CD. ALTAMIRANO ',
            style: TextStyle(color: Colors.black, fontSize: 16),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
      //color: Colors.yellow,
    ),
  );
}

Widget _Contacto() {
  return SafeArea(
    child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        width: double.infinity,
        height: 155,
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

Widget _Barra() {
  return Container(
    width: double.infinity,
    height: 10,
    color: Colors.grey,
  );
}
