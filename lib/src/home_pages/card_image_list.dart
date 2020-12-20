import 'package:flutter/material.dart';

import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/images/1.jpg"),
          CardImage("assets/images/jk.jpg"),
          CardImage("assets/images/2.jpg"),
          CardImage("assets/images/3.jpg"),
          CardImage("assets/images/6.jpg"),
          CardImage("assets/images/7.jpg"),
          CardImage("assets/images/22.jpg"),
          CardImage("assets/images/21.jpg"),
          //CardImage("assets/images/8.jpg"),
          CardImage("assets/images/25.jpg"),
          CardImage("assets/images/9.jpg"),
          CardImage("assets/images/10.jpg"),
          CardImage("assets/images/11.jpg"),
          CardImage("assets/images/20.jpg"),
          CardImage("assets/images/15.jpg"),
          CardImage("assets/images/16.jpg"),
        ],
      ),
    );
  }
}
