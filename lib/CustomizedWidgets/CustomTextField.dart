import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final IconData icon;
  CustomTextField({required this.text, required this.icon});

  bool obscuring() {
    if ((text == "Password") || text == "Confirm Password") {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
      child: TextFormField(
        obscureText: obscuring(),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, size: 25, color: Colors.black),
          hintText: text,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(60),
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(60),
            borderSide: BorderSide(color: Colors.white),
          ),
          filled: true,
          fillColor:
              Color.fromRGBO(255 /*red */, 255 /*Green*/, 255 /*Blue*/, 0.4),
        ),
      ),
    );
  }
}
