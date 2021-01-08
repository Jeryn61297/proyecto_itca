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
        height: 170,
        //color: Colors.grey[400],
        child: Text(
            'El TecNM Campus Cd. Altamirano cuenta con los siguientes departamentos:',
            style: TextStyle(
                color: Colors.black54,
                fontSize: 28,
                fontWeight: FontWeight.w400))),
  );
}

Widget _Botones() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 5),
    child: Container(
        height: 390,
        width: double.infinity,
        color: Colors.white60,
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 4 / 3,
          children: <Widget>[
            Muestra(
              child: RaisedButton(
                child: Text(
                  'Sistemas y\nComputación',
                ),
                onPressed: () {},
                color: Colors.blue[400],
                textColor: Colors.white,
              ),
            ),
            Muestra(
              child: RaisedButton(
                child: Text('Desarrollo\nAcademico'),
                onPressed: () {},
                color: Colors.yellow[500],
                textColor: Colors.grey[700],
              ),
            ),
            Muestra(
              child: RaisedButton(
                child: Text(
                  'Comunicación \n  y  Difusión',
                ),
                onPressed: () {},
                color: Colors.red[200],
                textColor: Colors.white,
              ),
            ),
            Muestra(
              child: RaisedButton(
                child: Text('Recursos \nMateriales'),
                onPressed: () {},
                color: Colors.orange[300],
                textColor: Colors.white,
              ),
            ),
            Muestra(
              child: RaisedButton(
                child: Text(
                  'Gestión\nTecnologica',
                ),
                onPressed: () {},
                color: Colors.green[300],
                textColor: Colors.white,
              ),
            ),
            Muestra(
              child: RaisedButton(
                child: Text('Recursos\nFinancieros'),
                onPressed: () {},
                color: Colors.red[400],
                textColor: Colors.white,
              ),
            ),
            Muestra(
              child: RaisedButton(
                child: Text(
                  'Servicios\nEscolares',
                ),
                onPressed: () {},
                color: Colors.blue[800],
                textColor: Colors.white,
              ),
            ),
            Muestra(
              child: RaisedButton(
                child: Text('Otra oficina'),
                onPressed: () {},
                color: Colors.orange[800],
                textColor: Colors.white,
              ),
            ),
          ],
        )),
  );
}

class Muestra extends StatelessWidget {
  final Widget child;

  const Muestra({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            this.child,
            SizedBox(height: 10),
            Icon(
              Icons.business_center_rounded,
              color: Colors.black54,
              size: 60,
            )
          ],
        ),
      ),
    );
  }
}
