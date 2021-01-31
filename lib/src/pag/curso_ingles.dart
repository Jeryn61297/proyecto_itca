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
                  _Name(),
                  _Funciones(),
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

Widget _Name() {
  return Container(
    //padding: EdgeInsets.symmetric(horizontal: 10),
    width: double.infinity,
    height: 140,
    color: Colors.pink[50],
    child: Column(
      children: <Widget>[
        SizedBox(height: 10),
        Text(
          'Cordinadora de lenguas extranjeras:',
          style: TextStyle(
            color: Colors.black,
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 6),
        Text(
          'L.A. Amparo Ortiz Mariano',
          style: TextStyle(
            color: Colors.black,
            fontSize: 19,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    ),
  );
}

Widget _Funciones() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      width: double.infinity,
      height: 570,
      //color: Colors.yellowAccent,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            'Funciones',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 7),
          Text(
              '> Difundir la oferta de capacitación a los aprendientes por medio de clases de Lenguas Extranjeras.',
              style: TextStyle(color: Colors.black, fontSize: 14),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text(
              '> Organizar y cordinar la asignación de facilitadores, aulas y horarios para la atención del servcio.',
              style: TextStyle(color: Colors.black, fontSize: 14),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text(
              '> Cordinar, controlar y dar seguimiento a los programas de enseñanza-aprendizaje de lenguas extranjeras.',
              style: TextStyle(color: Colors.black, fontSize: 14),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text(
              '> Verificar que los y las facilitadores utilicen la metodología y los recursos didácticos descritos en la instrumentación de enseñanza',
              style: TextStyle(color: Colors.black, fontSize: 14),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text(
              '> Elaborar los reportes estadísticos del aprovechamiento de los aprendientes, así como la eficiencia y la calidad de los servicios educativos.',
              style: TextStyle(color: Colors.black, fontSize: 14),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text(
              '> Llevar a cabo las gestiones para la obtención del "registro de validación de la Cordinación de Lenguas Extranjeras ante el Programa Coordinador de Lengua Extranjera".',
              style: TextStyle(color: Colors.black, fontSize: 14),
              textAlign: TextAlign.justify),
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
      height: 560,
      //color: Colors.yellowAccent,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            'Forma de inscripción',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15),
          Text(
              '> Hacer el depósito correspondiente (alumnos: \$850, participantes externos \$1,200) para el curso de lengua extrangera Ingles al número de cuenta del ITCA: 65507605412 del banco Santander.',
              style: TextStyle(color: Colors.black, fontSize: 14),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text(
              '> Enviar imagen del comprobante de depósito al correo: leng_cdaltamirano@tecnm.mx el cúal será intercambiado por el comprobante oficial emitido por el Depto de Recursos Financieros.',
              style: TextStyle(color: Colors.black, fontSize: 14),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text(
              '> Llenar la solicitud de inscripción en la siguiente liga, donde deberán anexar su comprobante de pago oficial. ',
              style: TextStyle(color: Colors.black, fontSize: 14),
              textAlign: TextAlign.justify),
          Text(
              'https://forms.office.com/Pages/ResponsePage.aspx?id=1nPLeT_4pkq9UYiWgdJuqyohAwI5poJEnZyRISYDTdVUOE5NN05JUU1VNIg1RFJSSFdORDNFN1U2Ui4u',
              style: TextStyle(color: Colors.black, fontSize: 14),
              textAlign: TextAlign.justify),
          SizedBox(height: 9),
          Text(
              '> Anexar al enlace anterior copia de identificación oficial (credencial de estudiante, INE) y copia de la constancia de nivel anterior, acreditado, emitido por el TecNM Campus Cd. Altamirano.',
              style: TextStyle(color: Colors.black, fontSize: 14),
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
            'leng_cdaltamirano@tecnm.mx',
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
