import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Box extends StatelessWidget {
  final String text;
  Box(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        color: Colors.amberAccent,
        margin: EdgeInsets.fromLTRB(0, 0, 5, 5),
        child: Center(
          child: Text(text,
              style: TextStyle(
                fontSize: 40,
              )),
        ));
  }
}
