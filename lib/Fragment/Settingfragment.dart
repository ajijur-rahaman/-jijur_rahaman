import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settingfragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.orange,
          child: Text('I am Settingfragment'),
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
