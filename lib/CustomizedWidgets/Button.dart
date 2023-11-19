import 'package:flutter/material.dart';

class CustomizedButton extends StatelessWidget {
  final String text;
  var onPressedFunction;
  CustomizedButton({
    required this.text,
    this.onPressedFunction,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 400, vertical: 40),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(150.0),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
          ),
        ),
        onPressed: onPressedFunction,
        child: Text(text, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
