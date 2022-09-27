import 'package:flutter/material.dart';
import 'constants.dart';


class IconContent extends StatelessWidget {
  IconContent(@required this.fontawesoneicon,this.text);

  final String text;
  final IconData fontawesoneicon;

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(fontawesoneicon,
          size: 80.0,),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style:kLabelTextStyle
        ),
      ],
    );
  }
}
