import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
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
  int ldnum = 1;
  int rdnum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ldnum = Random().nextInt(6)+1;
                  rdnum = Random().nextInt(6)+1;
                });
              },
              child: Image(
                image: AssetImage('Images/dice$ldnum.png'),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: FlatButton(
              onPressed: () {
                setState(() {
                  ldnum = Random().nextInt(6)+1;
                  rdnum = Random().nextInt(6)+1;
                });
              },
              child: Image(
                image: AssetImage('Images/dice$rdnum.png'),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
