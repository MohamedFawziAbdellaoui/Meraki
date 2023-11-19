import 'dart:math';

import 'package:animated_flex/animated_flex.dart';
import 'package:flutter/material.dart';
import 'package:meraki/CustomizedWidgets/Calendrier.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
  static String id = "MainScreen";
}

class _MainScreenState extends State<MainScreen> {
  String iotString = "LIOT";
  @override
  Widget build(BuildContext context) {
    // final screenSize = MediaQuery.of(context).size;
    // var containerWidth = 50.0;
    // var containerHeight = 50.0;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedContainer Demo'),
        ),
        body: AnimatedFlex(
          animationWidgetBuilder: (Animation animation, Widget child) {
            return Opacity(
              opacity: animation.value,
              child: Transform(
                transform: Matrix4.translationValues(
                    20 * (1.0 - animation.value),
                    20 * (1.0 - animation.value),
                    0.0),
                child: child,
              ),
            );
          },
          children: [
            Container(
              color: Colors.red,
              height: 200,
              margin: EdgeInsets.only(top: 20),
            ),
            Container(
              color: Colors.green,
              height: 200,
              margin: EdgeInsets.only(top: 20),
            ),
            Container(
              color: Colors.blue,
              height: 200,
              margin: EdgeInsets.only(top: 20),
            ),
          ],
        ),
      ),
    );
  }
}
