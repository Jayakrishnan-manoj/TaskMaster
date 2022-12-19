import 'package:flutter/material.dart';

const textInputDecoration = InputDecoration(
  labelStyle: TextStyle(
    color: Colors.black54,
    fontWeight: FontWeight.w400,
  ),
  focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromARGB(255, 90, 3, 137),
        width: 2,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20.0))),
  enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(208, 66, 255, 1),
        width: 2,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20.0))),
  errorBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
      width: 2,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
  ),
);

void nextScreen(context, screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

void nextScreenReplace(context, screen) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}
