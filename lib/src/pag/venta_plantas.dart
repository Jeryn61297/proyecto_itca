import 'package:flutter/material.dart';

class VentaPlantasPage extends StatelessWidget {
  static final String routeName = 'ventaplantas';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plantas de la región'),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                // AQUI VAN LOS NAMES DE LOS WIDGETS
                _Targeta1(),
                SizedBox(
                  height: 20,
                ),
                _Targeta2(),
                SizedBox(
                  height: 20,
                ),
                _Targeta3(),
                SizedBox(
                  height: 20,
                ),
                _Targeta4(),
                SizedBox(
                  height: 20,
                ),
                _Targeta5(),
                SizedBox(
                  height: 20,
                ),
                _Targeta6(),
                SizedBox(
                  height: 20,
                ),
                _Targeta7(),
                SizedBox(
                  height: 20,
                ),
                _Targeta8(),
                SizedBox(
                  height: 20,
                ),
                _Targeta9(),
                SizedBox(
                  height: 20,
                ),
                _Targeta10(),
                SizedBox(
                  height: 20,
                ),
                _Targeta11(),
                SizedBox(
                  height: 20,
                ),
                _Targeta12(),
                SizedBox(
                  height: 20,
                ),
                _Targeta13(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _Targeta1() {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
          title: const Text(
            'Tamarindo',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          subtitle: Text(
            'Tamarindus indica',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
          ),
        ),
        Image.asset('assets/images/32.jpg'),
      ],
    ),
  );
}

Widget _Targeta2() {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
          title: const Text(
            'Primavera',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          subtitle: Text(
            'Tabebuia donnell',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
          ),
        ),
        Image.asset('assets/images/31.jpg'),
      ],
    ),
  );
}

Widget _Targeta3() {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
          title: const Text(
            'Pistache',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          subtitle: Text(
            'Pistacia vera',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
          ),
        ),
        Image.asset('assets/images/33.jpg'),
      ],
    ),
  );
}

Widget _Targeta4() {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
          title: const Text(
            'Pinzan',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          subtitle: Text(
            'Pithecelllobium dulce',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
          ),
        ),
        Image.asset('assets/images/34.jpg'),
      ],
    ),
  );
}

Widget _Targeta5() {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
          title: const Text(
            'Papayo',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          subtitle: Text(
            'Carica papaya',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
          ),
        ),
        Image.asset('assets/images/35.jpg'),
      ],
    ),
  );
}

Widget _Targeta6() {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
          title: const Text(
            'Parota',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          subtitle: Text(
            'Enterolobium cyclocarpum',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
          ),
        ),
        Image.asset('assets/images/36.jpg'),
      ],
    ),
  );
}

Widget _Targeta7() {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
          title: const Text(
            'Neem',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          subtitle: Text(
            'Azadirachta indica A.Juss',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
          ),
        ),
        Image.asset('assets/images/37.jpg'),
      ],
    ),
  );
}

Widget _Targeta8() {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
          title: const Text(
            'Guanábana',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          subtitle: Text(
            'Annona muricata L',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
          ),
        ),
        Image.asset('assets/images/38.jpg'),
      ],
    ),
  );
}

Widget _Targeta9() {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
          title: const Text(
            'Guaje',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          subtitle: Text(
            'Leucaena leucocephala',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
          ),
        ),
        Image.asset('assets/images/39.jpg'),
      ],
    ),
  );
}

Widget _Targeta10() {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
          title: const Text(
            'Mango',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          subtitle: Text(
            'Mangifera indica',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
          ),
        ),
        Image.asset('assets/images/40.jpg'),
      ],
    ),
  );
}

Widget _Targeta11() {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
          title: const Text(
            'Acacia',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          subtitle: Text(
            'Delonix regia',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
          ),
        ),
        Image.asset('assets/images/41.jpg'),
      ],
    ),
  );
}

Widget _Targeta12() {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
          title: const Text(
            'Duranta',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          subtitle: Text(
            'Duranta erecta',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
          ),
        ),
        Image.asset('assets/images/42.jpg'),
      ],
    ),
  );
}

Widget _Targeta13() {
  return Card(
    clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        ListTile(
          title: const Text(
            'Cacahuananche',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          subtitle: Text(
            'Licania arborea',
            style:
                TextStyle(color: Colors.black.withOpacity(0.6), fontSize: 15),
          ),
        ),
        Image.asset('assets/images/43.jpg'),
      ],
    ),
  );
}
