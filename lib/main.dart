import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Ask Me Anything',
            style: TextStyle(fontSize: 25.0),
          ),
          backgroundColor: Colors.blue,
        ),
        body: EightBallPage(),
      ),
    );
  }
}

class EightBallPage extends StatefulWidget {
  @override
  _EightBallPageState createState() => _EightBallPageState();
}

class _EightBallPageState extends State<EightBallPage> {
  var ballNumber = 1;

  void changeBallNumber() {
    ballNumber = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  changeBallNumber();
                });
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
