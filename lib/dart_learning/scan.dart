import 'package:flutter/material.dart';
import 'package:learning_ai/pages/widgets/my_bottom_bar.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('This is ScanPage')),
      body: Container(color: Colors.green, height: 300),
      bottomNavigationBar: MyBottomBar(),
    );
  }
}
