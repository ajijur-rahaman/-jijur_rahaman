import 'package:flutter/material.dart';

class Testinput extends StatefulWidget {
  const Testinput({super.key});

  @override
  State<Testinput> createState() => _TestinputState();
}

class _TestinputState extends State<Testinput> {
  var showErrorOn = null;
  final TextEditingController _input1controller = TextEditingController();
  final TextEditingController _input2controller = TextEditingController();
  final TextEditingController _input3controller = TextEditingController();
  final List<TextEditingController> controllers = [TextEditingController()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Test Inputs in Column")),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: _input1controller,
              onEditingComplete: () {
                setState(() {
                  showErrorOn = _input1controller.text.isEmpty ? 1 : null;
                });
              },
              decoration: InputDecoration(
                hintText: "Input 1",
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
                errorText: showErrorOn == 1 ? "Field is required" : null,
              ),
            ),
            TextField(
              controller: _input2controller,
              onEditingComplete: () {
                setState(() {
                  showErrorOn = _input2controller.text.isEmpty ? 2 : null;
                });
              },
              decoration: InputDecoration(
                hintText: "Input 2",
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
                errorText: showErrorOn == 2 ? "Field is required" : null,
              ),
            ),
            TextField(
              controller: _input3controller,
              onEditingComplete: () {
                setState(() {
                  showErrorOn = _input3controller.text.isEmpty ? 3 : null;
                });
              },
              decoration: InputDecoration(
                hintText: "Input 3",
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
                errorText: showErrorOn == 3 ? "Field is required" : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
