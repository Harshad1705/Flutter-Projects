import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }
  Expanded buildKey({ Color color , int number}){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(number);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildKey(color:Colors.red,number:1),
              buildKey(color:Colors.orange,number:2),
              buildKey(color:Colors.yellow,number:3),
              buildKey(color:Colors.green,number:4),
              buildKey(color:Colors.teal,number:5),
              buildKey(color:Colors.blue,number:6),
              buildKey(color:Colors.purple,number:7),
            ],
          ),
        ),
      ),
    );
  }
}
