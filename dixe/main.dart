import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text('Dice')),
        ),
        body: DicePage(),
      ),
    );
  }
}



class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceButton = 4;
  int rightDiceButton = 1;

  void changeNumber(){
    setState(() {
      leftDiceButton =Random().nextInt(6)+1;
      rightDiceButton =Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(

        children: <Widget>[
          Expanded(
            flex: 2,
            child: FlatButton(
              onPressed: (){
                  changeNumber();
              },
              child: Image(
                image: AssetImage('images/dice$leftDiceButton.png'),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: FlatButton(
              onPressed: (){
                setState(() {
                  changeNumber();
                });

              },
              child: Image(
                image: AssetImage('images/dice$rightDiceButton.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
  }

