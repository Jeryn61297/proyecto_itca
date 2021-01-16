import 'package:flutter/material.dart';

class SistemasPage extends StatelessWidget {
  static final String routeName = 'sistemas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sistemas y Computo'),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _TituloPage(),
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
    height: 200,
    //color: Colors.green,
    child: Text('Pagina en construcción',
        style: TextStyle(
            color: Colors.black, fontSize: 54, fontWeight: FontWeight.w500)),
  );
}
