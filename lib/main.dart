import 'package:flutter/material.dart';
import 'package:meraki/Screens/MainScreen.dart';
import 'package:meraki/Screens/PresenceScreen.dart';
import 'package:meraki/Screens/SignInScreen.dart';
import 'package:meraki/Screens/SignUpScrenn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: SignInScreen.id, //routeName,
      routes: {
        SignInScreen.id: (context) => SignInScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        PresenceScreen.id: (context) => PresenceScreen(),
        MainScreen.id : (context) => MainScreen()
      },
    );
  }
}
