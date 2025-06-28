import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Messagefragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.blueGrey,
          child: Text('I am Messagefragment'),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
