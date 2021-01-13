import 'package:flutter/material.dart';

class AgronomiaPage extends StatelessWidget {
  static final String routeName = 'agronomia';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ing. Agronomia'),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 2),
                _TituloPage(),
                _Objetivo(),
                _Plan(),
                _Semestres(),
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
    height: 65,
    color: Colors.grey[300],
    child: Text(
      'INGENIERIA EN AGRONOMÍA\nLBIO-2010-233',
      style: TextStyle(
          color: Colors.black, fontSize: 21, fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,
    ),
  );
}

Widget _Objetivo() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Container(
      width: double.infinity,
      height: 180,
      //color: Colors.yellowAccent,
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Text(
            'Objetivo General',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
            '-----------.',
            style: TextStyle(color: Colors.black, fontSize: 16),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    ),
  );
}

Widget _Plan() {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    height: 40,
    child: Text(
      'PLAN DE ESTUDIOS',
      style: TextStyle(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
      textAlign: TextAlign.center,
    ),
  );
}

Widget _Semestres() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
    child: Container(
        height: 249,
        width: double.infinity,
        child: ListView(
          children: [
            Text(
              'SEMESTRE 1',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> ----',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 2',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> ---------------',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 3',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> ---------------------',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 4',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> --------------',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 5',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> ---------------',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 6',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '>  ------------',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 7',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> ----------------',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 8',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> ----------',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'SEMESTRE 9',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              '> Residencia profesional.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        )),
  );
}
