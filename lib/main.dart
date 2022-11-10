import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:keyano/pages/keyboard.dart';
import 'package:keyano/pages/Home.dart';


void main () {
  runApp(Keyano());
}

class Keyano extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.light(),
      home: Home(),
    );
  }
}




