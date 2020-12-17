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
                _Escudo(),
                _Direccion(),
                _Datos()
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

Widget _Escudo() {
  return Container(
    width: double.infinity,
    height: 300,
    //color: Colors.grey,
    child: (Image(
      image: AssetImage('assets/images/itca.png'),
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
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Container(
      width: double.infinity,
      height: 500,
      child: Column(
        children: [
          Text('   '),
          Text(
            'Misión',
            style: TextStyle(
                color: Colors.black, fontSize: 29, fontWeight: FontWeight.w700),
          ),
          Text(
            'Formar profesionales competitivos, con sentido humanista que contribuyan al desarrollo de país.',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Text(''),
          Text(''),
          Text(
            'Visión',
            style: TextStyle(
                color: Colors.black, fontSize: 29, fontWeight: FontWeight.w700),
          ),
          Text(
            '  Ser  una  Institución  educativa  de   alto \n  desempeño con valores declarados que \n  impulse su desarrollo sostenido a través \n  de la mejora continua',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          Spacer(),
          Text(
            'Forma de pago',
            style: TextStyle(
                color: Colors.black, fontSize: 29, fontWeight: FontWeight.w700),
          ),
          Text(
            'Los depositos dirigidos al Instituto Tecnológico de  Cd. Altamirano deberan ser realizados al banco Santander S.A.\nAl número de cuenta: 65-50760541-2 \nClave interbancaria: 014266655076054126 \nTitular: TECNM INSTITUTO TECNOLÓGICO DE \CD. ALTAMIRANO ',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
      //color: Colors.yellow,
    ),
  );
}
