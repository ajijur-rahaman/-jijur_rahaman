import 'dart:math';

import 'package:flutter/material.dart';

class Async extends StatefulWidget {
  const Async({super.key});
  @override
  State<Async> createState() => AsyncState();
}

class AsyncState extends State<Async> {
  // String _data = "No Data Yet";
  // Future<String> fetchData() async {
  //   await Future.delayed(Duration(seconds: 5));
  //   return 'Load Data Successfully';
  // }

  // void loadData() async {
  //   setState(() {
  //     _data = 'Loading...';
  //   });
  //   String data = await fetchData();
  //   setState(() {
  //     _data = data;
  //   });
  // }
  String _data = "Press the button to load data";
  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    bool errorOccurred = Random().nextBool();
    if (errorOccurred) {
      throw Exception('Failed to load data');
    } else {
      return 'Load Data Successfully';
    }
  }

  void loadData() async {
    setState(() {
      _data = 'Loading...';
    });
    try {
      String data = await fetchData();
      setState(() {
        _data = data;
      });
    } catch (e) {
      setState(() {
        _data = "Error: ${e.toString()}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text(_data, style: TextStyle(fontSize: 30)),
            SizedBox(height: 20),
            ElevatedButton(onPressed: loadData, child: Text('Load Data')),
          ],
        ),
      ),
    );
  }
}
