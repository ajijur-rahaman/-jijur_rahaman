import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homefragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blue,
          child: Text('I am Homefragment '),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
