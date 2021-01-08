import 'package:flutter/material.dart';

void main() {
  runApp(OficinasPage());
}

class OficinasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oficinas'),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _TituloPage(),
                _Botones(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _TituloPage() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 100,
        //color: Colors.grey[400],
        child: Text('El TecNM cuenta con los siguientes departamentos:',
            style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.w400))),
  );
}

Widget _Botones() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 5),
    child: Container(
        height: 500,
        width: double.infinity,
        color: Colors.grey[300],
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Informatica'),
                    onPressed: () {
                      print('apretao');
                    },
                  ),
                  Icon(Icons.school)
                ],
              ),
            )
          ],
        )),
  );
}
