import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Magic 8 ball'),
            ),
          ),
          body: MyApp(),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(
          child: Image.asset('images/ball$ballNum.png'),
          onPressed: () {
            setState(() {
              ballNum = Random().nextInt(5) + 1;
              print(ballNum);
            });
          },
        ),
      ),
    );
  }
}
