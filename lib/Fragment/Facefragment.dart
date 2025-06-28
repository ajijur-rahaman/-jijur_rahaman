import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Facefragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.red,
          child: Text('I am Facefragment'),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
