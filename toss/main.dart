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
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Center(child: Text('TOSS')),
          backgroundColor: Colors.tealAccent,
        ),
        body: TossBody(),
      ),
    );
  }
}

class TossBody extends StatefulWidget {
  const TossBody({Key? key}) : super(key: key);

  @override
  _TossBodyState createState() => _TossBodyState();
}

class _TossBodyState extends State<TossBody> {
  int value = 3;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                child: Expanded(
                  child: Image(
                    width: 300.0,
                    height: 200.0,
                    image: AssetImage('images/toss$value.png'),
                  ),
                ),
              ),
            ),
            Container(
              height: 20.0,
              width: 100.0,
              child: Center(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      value = Random().nextInt(2) + 1;
                    });
                  },
                  child: Text(
                    'Flip',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              color: Colors.greenAccent,
              margin: EdgeInsets.fromLTRB(50.0, 50.0, 50.0, 10.0),
              padding: EdgeInsets.all(2.0),
            ),
            Container(
              height: 20.0,
              width: 100.0,
              child: Center(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      value = 3;
                    });
                  },
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              color: Colors.greenAccent,
              margin: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 10.0),
              padding: EdgeInsets.all(2.0),
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.fromLTRB(50.0, 200.0, 50.0, 10.0),
          child: Text(
            'Created By Harry : '
            ' Only for KNCA',
          ),
        ),
      ],
    );
  }
}
