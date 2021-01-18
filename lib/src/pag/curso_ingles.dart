import 'package:flutter/material.dart';
import 'package:proyecto_itca/src/home_pages/home_page.dart';

class InglesPage extends StatelessWidget {
  static final String routeName = 'ingles';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lengua extranjera'),
        ),
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  _Titulo(),
                  _Name(),
                  _Datos(),
                  _Contacto(),
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
    height: 45,
    color: Colors.black54,
    child: Text(
      'Curso de Ingles',
      style: TextStyle(
          color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
    ),
  );
}

Widget _Name() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Container(
      width: double.infinity,
      height: 200,
      //color: Colors.green,
      child: ListView(
        children: <Widget>[
          Text('Responsable:',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500)),
          SizedBox(height: 5),
          Text('L.A. Amparo Ortiz Mariano',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
          SizedBox(height: 23),
          Text('Funciones:',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500)),
          SizedBox(height: 5),
          Text('> Inscribir a los alumnos', style: TextStyle(fontSize: 17)),
          Text('> Generar listas de asistencia',
              style: TextStyle(fontSize: 17)),
          Text('> Entregar constancias ', style: TextStyle(fontSize: 17)),
          Text('> Situaciones generadas durante el curso',
              style: TextStyle(fontSize: 17)),
        ],
      ),
    ),
  );
}

Widget _Datos() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      width: double.infinity,
      height: 420,
      //color: Colors.yellowAccent,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            'Forma de inscripción',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
              '> Hacer el depósito correspondiente (alumnos: \$850, participantes externos \$1,200) para el curso de lengua extrangera Ingles al número de cuenta del ITCA: 65507605412 del banco Santander.',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text(
              '> Enviar imagen del comprobante de depósito al correo: leng_cdaltamirano@tecnm.mx el cúal sera intercambiado por el comprobante oficial emitido por el Depto de Recursos Financieros.',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text(
              '> Llenar la solicitud de inscripción en la siguiente liga, donde deberán anexar su comprobante de pago oficial. ',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          Text(
              'https://forms.office.com/Pages/ResponsePage.aspx?id=1nPLeT_4pkq9UYiWgdJuqyohAwI5poJEnZyRISYDTdVUOE5NN05JUU1VNIg1RFJSSFdORDNFN1U2Ui4u',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text(
              '> Anexar al enlace anterior copia de identificación oficial (credencial de estudiante, INE) y copia de la constancia de nivel anterior, acreditado, emitido por el TecNM Campus Cd. Altamirano.',
              style: TextStyle(color: Colors.black, fontSize: 15),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
        ],
      ),
    ),
  );
}

Widget _Contacto() {
  return SafeArea(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      width: double.infinity,
      height: 80,
      color: Colors.yellow[50],
      child: Column(
        children: [
          Icon(
            Icons.mail,
            color: Colors.yellow[600],
            size: 35,
          ),
          SizedBox(height: 4),
          Text(
            'amparito@tecnm.mx',
            style: TextStyle(fontSize: 13),
          ),
        ],
      ),
    ),
  );
}

Widget _bottomNavigationBar(context) {
  return FloatingActionButton(
    elevation: 0,
    child: Icon(Icons.home),
    onPressed: () => Navigator.pushNamed(context, HomePage.routeName),
  );
}
