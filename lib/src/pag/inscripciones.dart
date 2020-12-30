import 'package:flutter/material.dart';

class InscripcionesPage extends StatelessWidget {
  static final String routeName = 'inscripciones';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscripciones'),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: <Widget>[
                _Titulo(),
                _Nota(),
                _Contacto(),
                _Titulo2(),
                _Pasos(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _Titulo() {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: 70,
    child: Text(
      'Proceso de Inscripción',
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
    ),
  );
}

Widget _Nota() {
  return Padding(
    padding: EdgeInsets.all(3),
    child: Container(
      width: double.infinity,
      height: 200,
      //color: Colors.purple[100],
      child: Column(
        children: <Widget>[
          Text(
            '¡No salgas de casa!',
            style: TextStyle(
                color: Colors.red, fontSize: 24, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 12),
          Text(
            'Envía un WhatsApp en un horario de de 9:00 a 16:00 hrs. con los siguientes datos: \n> Nombre completo del aspirante. \n> Opción de carrera. \n> Numero de telefono. \n> E-mail.',
            style: TextStyle(color: Colors.black87, fontSize: 19),
          ),
        ],
      ),
    ),
  );
}

Widget _Contacto() {
  return SafeArea(
    child: Container(
        padding: EdgeInsets.symmetric(horizontal: 59, vertical: 0),
        width: double.infinity,
        height: 70,
        //color: Colors.grey,
        child: Row(children: <Widget>[
          Column(
            children: [
              //-ICONO1---------------------
              Icon(
                Icons.phone_android_rounded,
                size: 50,
                color: Colors.green,
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Text(
                '767-104-08-21 \n767-115-74-41',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 21,
                ),
              )
            ],
          )
        ])),
  );
}

Widget _Titulo2() {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: 50,
    child: Text(
      'Proceso de Reinscripción',
      style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
    ),
  );
}

Widget _Pasos() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 5),
    child: Container(
      width: double.infinity,
      height: 800,
      color: Colors.yellow[100],
      child: (Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            '> Realizar un pago por \$1500 al banco Santander (Mexico), S. A.  \nNumero de cuenta: 65507605412.',
            style: TextStyle(color: Colors.black, fontSize: 19),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '> Envía tu comprobante de pago al Depto de Recursos Financieros, por medio de un correo electronico rf_cdaltamirano@tecnm.mx o a través de WhatsApp al 732-113-00-15 para solicitar tu recibo de oficial de cobro.',
            style: TextStyle(color: Colors.black, fontSize: 19),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 10,
          ),
          Text('Solicitar ')
        ],
      )),
    ),
  );
}
