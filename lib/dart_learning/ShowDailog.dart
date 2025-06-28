import 'package:flutter/material.dart';

class practice extends StatefulWidget {
  const practice({super.key});

  @override
  State<practice> createState() => _practiceState();
}

class _practiceState extends State<practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDailogBox(context);
          },
          child: Text('Dailog Box'),
        ),
      ),
    );
  }
}

Future showDailogBox(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    barrierColor: Colors.amberAccent,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Dailog Box'),
        content: SizedBox(
          height: 400,
          child: Column(children: [Text('This is a content box.')]),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text("cancel"),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Confirm")),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Ok"),
          ),
        ],
      );
    },
  );
}
