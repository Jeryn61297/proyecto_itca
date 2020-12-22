//import 'dart:html';

import 'package:flutter/material.dart';

class TarifasPage extends StatelessWidget {
  static final String routeName = 'tarifas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarifa de servicios'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            //--0----------
            Container(
              child: ListTile(
                title: Text(
                  'Credencial plastificada',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$75.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //--1-------
            Container(
              color: Colors.black12,
              child: ListTile(
                title: Text(
                  'Constancia de calificaciones',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$70.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //--2-----------------
            Container(
              child: ListTile(
                title: Text(
                  'Constancia de califiaciones (kardex)',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$80.00 MXN',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
            //--3----------
            Container(
              color: Colors.black12,
              child: ListTile(
                title: Text(
                  'Constancia act. complementarias',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$60.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //--4-------
            Container(
              child: ListTile(
                title: Text(
                  'Constancia de materias cursando',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$50.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //--5-----------------
            Container(
              color: Colors.black12,
              child: ListTile(
                title: Text(
                  'Constancia de avance académico',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$50.00 MXN',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
            //--6----------
            Container(
              child: ListTile(
                title: Text(
                  'Constancia de traslado estudiantil',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$2000.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //--7-------
            Container(
              color: Colors.black12,
              child: ListTile(
                title: Text(
                  'Constancia de movilidad',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$300.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //--8-----------------
            Container(
              child: ListTile(
                title: Text(
                  'Constancia conclusion de estudios',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$200.00 MXN',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
            //--9----------
            Container(
              color: Colors.black12,
              child: ListTile(
                title: Text(
                  'Constancia egresados con promedio',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$200.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //--10-------
            Container(
              child: ListTile(
                title: Text(
                  'Constancia egresados con calificación',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$200.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //--11-----------------
            Container(
              color: Colors.black12,
              child: ListTile(
                title: Text(
                  'Constancia de no adeudo',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$200.00 MXN',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
            //--12----------
            Container(
              child: ListTile(
                title: Text(
                  'Constancia de especialidad',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$250.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //--13----------
            Container(
              color: Colors.black12,
              child: ListTile(
                title: Text(
                  'Constancia liberación de residencia profesional',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$200.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //--14-------
            Container(
              child: ListTile(
                title: Text(
                  'Reposición de acta de acreditación de residencia profesional',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$200.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //--15-----------------
            Container(
              color: Colors.black12,
              child: ListTile(
                title: Text(
                  'Reposición de acta de acreditación de inglés',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$200.00 MXN',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
            //--16----------
            Container(
              child: ListTile(
                title: Text(
                  'Certificado de estudios',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$500.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //--17-----------------
            Container(
              color: Colors.black12,
              child: ListTile(
                title: Text(
                  'Certificado de titulo profesional tramite electronico',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$1600.00 MXN',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
            //--18----------
            Container(
              child: ListTile(
                title: Text(
                  'Duplicado de certificado',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$900.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //--19-----------------
            Container(
              color: Colors.black12,
              child: ListTile(
                title: Text(
                  'Certificado parcial',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$1000.00 MXN',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
            //--20----------
            Container(
              child: ListTile(
                title: Text(
                  'Convalidación de estudios',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$3000.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //--21-----------------
            Container(
              color: Colors.black12,
              child: ListTile(
                title: Text(
                  'Equivalencia de estudios',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$800.00 MXN',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
            //--22----------
            Container(
              child: ListTile(
                title: Text(
                  'Resolución de equivalencia ',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$800.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //--23-----------------
            Container(
              color: Colors.black12,
              child: ListTile(
                title: Text(
                  'Revalidación de estudios',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$3000.00 MXN',
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
            ),
            //--24----------
            Container(
              child: ListTile(
                title: Text(
                  'Carta de postulación de la beca de residencia profesional a la titulación',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                subtitle: Text(
                  ' \$100.00 MXN',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            //-------------------
          ],
        ),
      ),
    );
  }
}
