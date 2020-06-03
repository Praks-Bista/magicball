import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('Need a answer? Press the magic ball !!'),
            backgroundColor: Colors.blueGrey[600],
          ),
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: () {
                  setState(() {
                    ballNumber = Random().nextInt(4) + 1;
                  });
                },
                child: Image.asset('images/ball$ballNumber.png')),
          ),
        ],
      ),
    );
  }
}
