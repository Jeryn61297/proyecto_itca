import 'package:flutter/material.dart';

class InformaticaPage extends StatelessWidget {
  static final String routeName = 'informatica';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informática'),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 2),
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
    height: 80,
    color: Colors.grey[300],
    child: Text(
      'INGENIERÍA INFORMÁTICA\nIINF-2010-220',
      style: TextStyle(
          color: Colors.black, fontSize: 24, fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,
    ),
  );
}
