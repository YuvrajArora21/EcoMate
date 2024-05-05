import 'package:flutter/material.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
    minimumSize: Size(327, 50),
    backgroundColor: Color.fromARGB(255, 111, 152, 104),
    elevation: 0,
    foregroundColor: Colors.white,
    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 25.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ));
