import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/home_pages/home_page.dart';

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
        bottomNavigationBar: _bottomNavigationBar(context));
  }
}

Widget _Titulo() {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: 100,
    child: Text(
      'Proceso de Inscripción',
      style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
    ),
  );
}

Widget _Nota() {
  return Padding(
    padding: EdgeInsets.all(3),
    child: Container(
      width: double.infinity,
      height: 260,
      //color: Colors.purple[100],
      child: Column(
        children: <Widget>[
          Text(
            '<< ¡No salgas de casa! >>',
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
    height: 90,
    //color: Colors.blue,
    child: Text(
      'Proceso de Reinscripción',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
    ),
  );
}

Widget _Pasos() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 5),
    child: Container(
      width: double.infinity,
      height: 1400,
      color: Colors.cyan[50],
      child: (Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Text(
            '1.- Realizar el pago correspondiente por \$1500 M.N. al banco Santander (Mexico), S. A.  \nNumero de cuenta: 65507605412.',
            style: TextStyle(color: Colors.black, fontSize: 19),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '2.- Envía tu comprobante de pago al Depto de Recursos Financieros, por medio de un correo electronico rf_cdaltamirano@tecnm.mx o a través de WhatsApp al 732-113-00-15 para solicitar tu recibo de oficial de cobro.',
            style: TextStyle(color: Colors.black, fontSize: 19),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '3.- Solicitar la inscripción o reinscripción al Depto de Servicios Escolares, por lo que deberás adjuntar tu recibo oficial de pago proporcionado por el Depto de Recursos Financieros en el siguiente formulario: \nhttps://forms.gle/pbFdPoDHdem6vWbV7 ',
            style: TextStyle(color: Colors.black, fontSize: 19),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '4.- Recibirás una notificación de inscripción en la App Movil del ITCA sobre la fecha en que deberas realizarla con tus datos de acceso al SII.',
            style: TextStyle(color: Colors.black, fontSize: 19),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '5.- Para realizar la selección de materias, deberás solicitar al Depto de Division de estudios la carga academica, en el siguiente correo: dep_cdaltamirano@tecnm.mx o por WhatsApp al 732-108-72-95; o bien realizarla con tu cuenta en el SII www.sii.italtamirano.edu.mx para realizar la selección de materias.',
            style: TextStyle(color: Colors.black, fontSize: 19),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '6.- El Depto de Division de Estudios, enviará por correo electrónico el horario firmado y sellado al alumno(a) inscrito(a).',
            style: TextStyle(color: Colors.black, fontSize: 19),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '7.- El alumno(a) deberá regresar el horario firmado de recibido al correo de División de Estudios: dep_cdaltamirano@tecnm.mx.',
            style: TextStyle(color: Colors.black, fontSize: 19),
            textAlign: TextAlign.justify,
          ),
        ],
      )),
    ),
  );
}

Widget _bottomNavigationBar(context) {
  return FloatingActionButton(
    child: Icon(
      Icons.home,
      color: Colors.white,
      size: 35,
    ),
    onPressed: () => Navigator.pushNamed(context, HomePage.routeName),
  );
}
