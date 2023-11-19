import 'package:flutter/material.dart';
import 'package:meraki/CustomizedWidgets/Backgroound.dart';
import 'package:meraki/CustomizedWidgets/Button.dart';
import 'package:meraki/CustomizedWidgets/CustomTextField.dart';
import 'package:meraki/Screens/MainScreen.dart';
import 'package:meraki/Screens/PresenceScreen.dart';

import 'package:meraki/Screens/SignUpScrenn.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
  static String id = "SignInScreen";
}

class _SignInScreenState extends State<SignInScreen> {
  var _signInFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Background(
            child: ListView(
              children: <Widget>[
                Text(
                  "Smart ISITCom",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 35,
                  ),
                ),
                Form(
                  key: _signInFormKey,
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      CustomTextField(
                        icon: Icons.mail,
                        text: "Mail",
                      ),
                      CustomTextField(
                        text: "Password",
                        icon: Icons.lock,
                      ),
                      SizedBox(),
                      CustomizedButton(
                        text: "SignIn",
                        onPressedFunction: () {
                          var formData = _signInFormKey.currentState;
                          if (formData!.validate()) {
                            formData.save();
                          }
                          Navigator.pushNamed(context, MainScreen.id);
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Don't Have an account?",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignUpScreen.id);
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
