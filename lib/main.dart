import 'package:flutter/material.dart';
import 'package:learning_ai/E.Design/Cart.dart';
import 'package:learning_ai/dart_learning/day1.dart';
// import 'package:learning_ai/E.Design/Cart.dart';
// import 'package:learning_ai/E.Design/End_Drawer.dart';
// import 'package:learning_ai/E.Design/End_Drawer.dart';
// import 'package:learning_ai/E.Design/Product_Full.dart';
// import 'package:learning_ai/E.Design/S..d.dart';
// import 'package:learning_ai/E.Design/Product_Full.dart';
// import 'package:learning_ai/E.Design/Search.dart';

// import 'package:learning_ai/E.Design/F_result.dart';
// import 'package:learning_ai/E.Design/Product_Full.dart';
// import 'package:learning_ai/E.Design/async.dart';
// import 'package:learning_ai/E.Design/S..d.dart';

// import 'package:learning_ai/E.Design/H_PageFull.dart';
// import 'package:learning_ai/E.Design/Search.dart';
// import 'package:learning_ai/E.Design/discover.dart';
// import 'package:learning_ai/E.Design/Search.dart';

// import 'package:learning_ai/pages/Card1.dart';
// import 'package:learning_ai/pages/Cart_Screen.dart';

import 'package:learning_ai/pages/modelingSystem/Products.dart';
import 'package:learning_ai/pages/widgets/ShoppingCart.dart';
// import 'package:learning_ai/pages/modelingSystem/Products.dart';
// import 'package:learning_ai/E.Design/S..d.dart';

void main() {
  day1();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // scrollBehavior: MaterialScrollBehavior().copyWith(
      //   dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch},
      // ),
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'PlayfairDisplay',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Cart(),
      routes: {
        '/home': (context) => Products(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/scan': (context) => ShoppingCart(),
      },
    );
  }
}
