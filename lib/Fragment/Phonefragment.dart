import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Phonefragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.yellow,
          child: Text('I am Phonefragment'),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
