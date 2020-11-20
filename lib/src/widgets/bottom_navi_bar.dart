import 'package:flutter/material.dart';

class BottomNaviBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

Widget _bottomNavigationBar(BuildContext context) {
  return Theme(
    data: Theme.of(context).copyWith(
        canvasColor: Colors.purple[900],
        primaryColor: Colors.white70,
        textTheme: Theme.of(context).textTheme.copyWith(
            caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
    child: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 37.0), title: Container()),
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today, size: 30.0),
          title: Container(),
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0),
            title: Container()),
      ],
    ),
  );
}
