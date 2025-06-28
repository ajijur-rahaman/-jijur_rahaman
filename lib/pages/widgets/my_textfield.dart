import 'package:flutter/material.dart';

class MyTextfield extends StatefulWidget {
  const MyTextfield({super.key});

  @override
  State<MyTextfield> createState() => _MyTextfieldState();
}

class _MyTextfieldState extends State<MyTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 500,
      padding: EdgeInsets.all(16),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          filled: true,
          fillColor: Color(0xffC1DBB4),
          hintText: ' Write',
          labelText: "Search Here",
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
