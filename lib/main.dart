import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey[900],
          appBar: AppBar(
            backgroundColor: Colors.lightBlue[900],
            title: const Text(
              'Ask and Click',
              style: TextStyle(
                color: Colors.lightBlue,
                fontWeight: FontWeight.w300,
                letterSpacing: 5,
              ),
            ),
            centerTitle: true,
          ),
          body: const MagicBalls()),
    );
  }
}

class MagicBalls extends StatefulWidget {
  const MagicBalls({super.key});

  @override
  State<MagicBalls> createState() => _MagicBallsState();
}

class _MagicBallsState extends State<MagicBalls> {
  int num = 1;
  change() {
    num = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(60.0),
        child: TextButton(
          onPressed: () {
            setState(() {
              change();
            });
          },
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent)),
          child: Image.asset(
            'images/ball$num.png',
          ),
        ),
      ),
    );
  }
}
