import 'package:flutter/material.dart';
import 'package:meraki/CustomizedWidgets/Backgroound.dart';
import 'package:meraki/CustomizedWidgets/Button.dart';
import 'package:meraki/CustomizedWidgets/CustomTextField.dart';
import 'package:meraki/Screens/SignInScreen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
  static String id = "SignUpScreen";
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    int groupValue;
    return MaterialApp(
      home: Scaffold(
        body: Background(
          child: ListView(
            children: <Widget>[
              Text("Smart ISITCom"),
              Form(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: size.width * .04,
                    ),
                    HorizontalTextField(
                      icon1: Icons.person,
                      icon2: Icons.person_outline,
                      hintText1: "Name",
                      hintText2: "Last Name",
                    ),
                    SizedBox(
                      height: size.width * .04,
                    ),
                    HorizontalTextField(
                      icon1: Icons.mail,
                      icon2: Icons.mail_outline_sharp,
                      hintText1: "Mail",
                      hintText2: "Outlook Mail",
                    ),
                    SizedBox(
                      height: size.width * .04,
                    ),
                    HorizontalTextField(
                      icon1: Icons.lock,
                      icon2: Icons.lock_outline_rounded,
                      hintText1: "Password",
                      hintText2: "Confirm Password",
                    ),
                    SizedBox(
                      height: size.width * .04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Radio(
                              value: 0,
                              groupValue: 0,
                              onChanged: (i) {},
                            ),
                            Text("Professor")
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Radio(
                              value: 1,
                              groupValue: 0,
                              onChanged: (i) {},
                            ),
                            Text("Technicien"),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Radio(
                              value: 2,
                              groupValue: 0,
                              onChanged: (i) {},
                            ),
                            Text("Administation"),
                          ],
                        ),
                      ],
                    ),
                    CustomizedButton(
                      text: "SignUp",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Already Have an account?",
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, SignInScreen.id);
                          },
                          child: Text(
                            "Sign In",
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
            ],
          ),
        ),
      ),
    );
  }
}

class HorizontalTextField extends StatelessWidget {
  String hintText1;
  String hintText2;
  IconData icon1;
  IconData icon2;
  HorizontalTextField({
    required this.hintText1,
    required this.hintText2,
    required this.icon1,
    required this.icon2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Flexible(
          child: CustomTextField(
            icon: icon1,
            text: hintText1,
          ),
        ),
        Flexible(
          child: CustomTextField(
            icon: icon2,
            text: hintText2,
          ),
        ),
      ],
    );
  }
}
