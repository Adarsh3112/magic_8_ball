import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
          backgroundColor: Colors.purple.shade700,
          title: Text("Your Answer !!"),
          centerTitle: true),
      body: ball(),
    );
  }
}

class ball extends StatefulWidget {
  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5) + 1;
            print(ballNumber);
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
