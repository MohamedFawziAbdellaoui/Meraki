import 'package:flutter/material.dart';
import 'package:meraki/CustomizedWidgets/Calendrier.dart';

class PresenceScreen extends StatefulWidget {
  @override
  _PresenceScreenState createState() => _PresenceScreenState();
  static String id = "PresenceScreen";
}

class _PresenceScreenState extends State<PresenceScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/background.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    width: width * 2 / 3,
                    height: height,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: height * 0.1),
                        ClassName(),
                        SizedBox(height: height * 0.15),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            HalfDay(
                              width: width,
                              height: height,
                              text: ["8h30 - 10h", "10h-11h30", "11h30 - 13h"],
                            ),
                            HalfDay(
                              text: ["14h-15h30", "15h30-17h", "17h-18h30"],
                              width: width,
                              height: height,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Calendrier()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClassName extends StatelessWidget {
  const ClassName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white, size: 40),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Text(
          "     Class Name",
          style: TextStyle(
            fontSize: 50,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class HalfDay extends StatelessWidget {
  final text;
  const HalfDay({
    Key? key,
    required this.text,
    required this.width,
    required this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OneHourView(
          width: width,
          hour: text[0],
        ),
        SizedBox(
          height: height * .04,
        ),
        OneHourView(width: width, hour: text[1]),
        SizedBox(
          height: height * .04,
        ),
        OneHourView(width: width, hour: text[2]),
      ],
    );
  }
}

class OneHourView extends StatelessWidget {
  final String hour;
  const OneHourView({
    Key? key,
    required this.width,
    required this.hour,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "               " + hour,
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: <Widget>[
            SizedBox(
              width: width * .11,
            ),
            Icon(
              Icons.picture_as_pdf,
              size: 20,
              color: Colors.white,
            ),
            Text(
              "Liste de presence.pdf",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
