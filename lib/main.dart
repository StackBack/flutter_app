import 'dart:math' as math;
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  Color colorCode = Colors.lightBlue;
  final Random random = Random();

  generateRandomColor(){
    Color tmpColor = Color.fromARGB(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    ) ;
    setState(() {
      colorCode = tmpColor ;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorCode,
      child: GestureDetector(
        onTap: () => generateRandomColor(),
      ),
    );
  }
}