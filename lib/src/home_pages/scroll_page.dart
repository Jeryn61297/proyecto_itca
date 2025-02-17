import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/home_pages/home_page.dart';

import 'home_page.dart';

class ScrollPage extends StatelessWidget {
  static final String routeName = 'scroll';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        _pagina1(),
        _pagina2(context),
      ],
    ));
  }

//Pagina1
//----------------------------------------------------
  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }

  Widget _colorFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }

  Widget _imagenFondo() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/images/105.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    //final estiloTexto = TextStyle(color: Colors.white, fontSize: 40.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 450.0),
          Text('Desliza', style: TextStyle(color: Colors.black, fontSize: 20)),
          Text('(hacia arriba)',
              style: TextStyle(color: Colors.black87, fontSize: 20)),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_up, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }

//Pagina2
//--------------------------------------------------
  Widget _pagina2(context) {
    return Stack(
      children: <Widget>[_imagenFondo2(), _boton(context)],
    );
  }

  Widget _imagenFondo2() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/images/letras.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _boton(context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      //color: Colors.blue[100],
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
            child: Text('Bienvenidos', style: TextStyle(fontSize: 20.0)),
          ),
          onPressed: () => Navigator.pushNamed(context, HomePage.routeName),
        ),
      ),
    );
  }
}
