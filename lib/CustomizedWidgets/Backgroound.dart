import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(109, 156, 194, 1),
              backgroundBlendMode: BlendMode.color,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  offset: Offset(30, 30),
                  blurRadius: 7,
                ),
              ],
            ),
            height: 700,
            width: 1220,
            child: child),
      ],
    );
  }
}
