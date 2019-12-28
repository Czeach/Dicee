import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.black,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDice = 3;
  int rightDice = 5;

  void rollDice() {
    leftDice = Random().nextInt(6) + 1;
    rightDice = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child:
          FlatButton(
            onPressed: () {
              setState(() {
                rollDice();
              });
            },
            child: Image(image:
            AssetImage('images/dice$leftDice.png')
            ),
          )
          ),
          Expanded(child:
          FlatButton(
            onPressed: () {
              setState(() {
                rollDice();
              });
            },
            child: Image(image:
            AssetImage('images/dice$rightDice.png')
            ),
          )
          )
        ],
      ),
    );
  }
}
