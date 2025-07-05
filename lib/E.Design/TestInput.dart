import 'package:flutter/material.dart';

class Testinput extends StatefulWidget {
  const Testinput({super.key});

  @override
  State<Testinput> createState() => _TestinputState();
}

class _TestinputState extends State<Testinput> {
  var showErrorList = [];
  final List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Inputs in Column")),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: List.generate(3, (index) {
            return TextField(
              controller: controllers[index],
              onEditingComplete: () {
                setState(() {
                  controllers[index].text.isEmpty
                      ? showErrorList.add(index)
                      : showErrorList.remove(index);
                });
              },
              decoration: InputDecoration(
                hintText: "Input " + (index + 1).toString(),
                hintStyle: TextStyle(fontSize: 12),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    width: 0.5,
                    color: Colors.grey.withOpacity(.3),
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.green),
                ),
                errorText:
                    showErrorList.contains(index) ? "Field is required" : null,
              ),
            );
          }),
        ),
      ),
    );
  }
}
