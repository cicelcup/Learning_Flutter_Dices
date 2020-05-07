import 'package:flutter/material.dart';
import 'about.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dices {
  final String image;
  final Color color;

  Dices(this.image, this.color);
}

final List<Dices> dices = [
  Dices("images/one.svg", Colors.indigoAccent),
  Dices("images/two.svg", Colors.redAccent),
  Dices("images/three.svg", Colors.greenAccent),
  Dices("images/four.svg", Colors.yellowAccent),
  Dices("images/five.svg", Colors.orangeAccent),
  Dices("images/six.svg", Colors.purpleAccent),
];

class MyDicesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Juego de dados"),
      ),
      drawer: Drawer(
        child: DrawerHeader(
          child: SafeArea(
            child: AboutAPP(),
          ),
        ),
      ),
      body: DicePage(),
    );
  }
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width / 2.5;
    var leftDice = 2;
    var rightDice = 6;

    return Center(
        child: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FlatButton(
          onPressed: () {
            print("Left dice");
          },
          child: SvgPicture.asset(
            dices[leftDice - 1].image,
            color: dices[leftDice - 1].color,
            width: screenWidth,
          ),
        ),
        FlatButton(
          onPressed: () {
            print("Right dice");
          },
          child: SvgPicture.asset(
            dices[rightDice - 1].image,
            color: dices[rightDice - 1].color,
            width: screenWidth,
          ),
        )
      ],
    ));
  }
}
