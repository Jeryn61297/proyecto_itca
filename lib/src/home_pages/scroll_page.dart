import 'package:flutter/material.dart';

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
        image: AssetImage('assets/fachada.jpg'),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _textos() {
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 40.0);
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 300.0),
          Text(' ', style: estiloTexto),
          Text(' ', style: estiloTexto),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white)
        ],
      ),
    );
  }

//Pagina2
//--------------------------------------------------
  Widget _pagina2(context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      //color: Colors.blue[300],
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Bienvenidos', style: TextStyle(fontSize: 20.0)),
          ),
          onPressed: () => Navigator.pushNamed(context, HomePage.routeName),
        ),
      ),
    );
  }
}
