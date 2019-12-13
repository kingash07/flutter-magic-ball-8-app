import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int imageNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen[900],
        title: Text(
          'Ask Me Anything',
          style: TextStyle(fontFamily: 'Pacifico'),
        ),
      ),
      backgroundColor: Colors.lightGreen[200],
      body: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              imageNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$imageNumber.png'),
        ),
      ),
    );
  }
}
