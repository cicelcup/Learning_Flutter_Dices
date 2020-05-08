import 'package:flutter/material.dart';
import 'dart:math';
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

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice;
  int rightDice;

  void setDices() {
    leftDice = Random().nextInt(6);
    rightDice = Random().nextInt(6);
  }

  @override
  void initState() {
    setDices();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width / 2.5;
    return Center(
        child: Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        FlatButton(
          onPressed: () {
            setState(() {
              setDices();
            });
          },
          child: SvgPicture.asset(
            dices[leftDice].image,
            color: dices[leftDice].color,
            width: screenWidth,
          ),
        ),
        FlatButton(
          onPressed: () {
            setState(() {
              setDices();
            });
          },
          child: SvgPicture.asset(
            dices[rightDice].image,
            color: dices[rightDice].color,
            width: screenWidth,
          ),
        )
      ],
    ));
  }
}
