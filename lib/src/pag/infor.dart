import 'package:flutter/material.dart';

class InforPage extends StatelessWidget {
  static final String routeName = 'infor';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informacion'),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[_TituloPage(), _Escudo(), _Datos()],
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
      color: Colors.green,
      child: Text('Instituto Tecnologico \n de Cd. Altamirano',
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.w500)));
}

Widget _Escudo() {
  return Container(
    width: double.infinity,
    height: 300,
    color: Colors.grey,
    child: (Image(
      image: AssetImage('assets/images/itca.png'),
    )),
  );
}

Widget _Datos() {
  return Container(
    width: double.infinity,
    height: 200,
    color: Colors.blue,
  );
}
