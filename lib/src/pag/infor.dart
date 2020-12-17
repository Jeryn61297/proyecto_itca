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
      child: Text('Instituto Tecnologico \n de Cd. Altamirano',
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
  return Container(
    width: double.infinity,
    height: 900,
    child: Column(
      children: [
        Text('   '),
        Text(
          'Mision',
          style: TextStyle(
              color: Colors.black, fontSize: 29, fontWeight: FontWeight.w700),
        ),
        Text(
          ' Formar profesionales competitivos, con \n sentido  humanista  que  contribuyan  al \n desarrollo de país.',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        Text(''),
        Text(''),
        Text(
          'Vision',
          style: TextStyle(
              color: Colors.black, fontSize: 29, fontWeight: FontWeight.w700),
        ),
        Text(
          '  Ser  una  Institución  educativa  de   alto \n  desempeño con valores declarados que \n  impulse su desarrollo sostenido a través \n  de la mejora continua',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ],
    ),
    //color: Colors.yellow,
  );
}
