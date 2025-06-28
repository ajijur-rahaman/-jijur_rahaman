// import 'package:flutter/material.dart';

// class OpacityExample extends StatelessWidget {
//   OpacityExample({super.key});
//   final Map<String, String> sampleImage = {
//     "title": "Beautiful Image",
//     "url":
//         'https://scontent.fcgp27-1.fna.fbcdn.net/v/t39.30808-6/467846231_8696783947105749_4392796007910259771_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGAUaYmOtlokXMVS_ZlGQRhCIQS9hVP9QsIhBL2FU_1C-cFqZp4w5PFP5DtSz4XjNZZfwRqXYXr4LtkufY1bvd4&_nc_ohc=nVqboxg_SpwQ7kNvwFZIOwE&_nc_oc=Adl8UGLSoF6aTggOxOsG_uP6lOOXSSUu2Q52xSS0ap5cEjqHkzfoHwcUx6wmHJWSKQ9wJOoNFlvsU6gtJ5l9uGb1&_nc_zt=23&_nc_ht=scontent.fcgp27-1.fna&_nc_gid=dBu1p5xmhIzQNSPyzpLUyA&oh=00_AfJYaHKOq9en1cI4AT47w0Mj1iFWN3m7xuIAZFTzEGwVlQ&oe=682A0918',
//   };

//   Widget buildImageContainer(Map<String, String> imageData) {
//     String title = imageData['title'] ?? "No Title";
//     String imageUrl = imageData['url'] ?? '';
//     return Container(
//       margin: EdgeInsets.all(10),
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.grey[200],
//         boxShadow: [
//           BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(2, 2)),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Image.network(
//             imageUrl,
//             height: 200,
//             width: 400,
//             fit: BoxFit.cover,
//             errorBuilder:
//                 (context, error, stackTracer) => Icon(Icons.broken_image),
//           ),
//           SizedBox(height: 10),
//           Text(
//             title,
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Image Container Example')),
//       body: Center(child: buildImageContainer(sampleImage)),
//     );
//   }
// }

/////////////////////Ractangular Area/////////////
import 'package:flutter/material.dart';

class OpacityExample extends StatefulWidget {
  OpacityExample({super.key});

  @override
  State<OpacityExample> createState() => OpacityexampleState();
}

class OpacityexampleState extends State<OpacityExample> {
  TextEditingController widthController = TextEditingController();

  TextEditingController lengthController = TextEditingController();
  double? area; //area er kono man nei(null).
  void calculateArea() {
    final input1 = lengthController.text;
    final length = double.tryParse(input1);
    final input2 = widthController.text;
    final width = double.tryParse(input2);

    if (length != null && width != null && length >= 0 && width >= 0) {
      setState(() {
        area = length * width;
      });
    } else {
      setState(() {
        area = null;
      });
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Please write a correct number')));
    }
  }

  void clearAll() {
    setState(() {
      lengthController.clear();
      widthController.clear();
      area = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The circle area by Calculator',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                height: 50,
                child: TextField(
                  controller: lengthController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Length",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                height: 50,
                child: TextField(
                  controller: widthController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Width",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: calculateArea,
                child: Text("Calculate"),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  area == null
                      ? ''
                      : "  Area = ${area!.toStringAsFixed(2)} mitre",
                  //area==null? '' :.... is ternary operator(Short if else).
                  //area ==null hle ''(faka String) return korbe nahle danpase ja ace ty return krbe
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: clearAll,
                child: Text("Clear", style: TextStyle(fontSize: 20)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: Size(200, 50),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//////////////MaxAgePeople///////////
// import 'package:flutter/material.dart';

// class OpacityExample extends StatefulWidget {
//   OpacityExample({super.key});

//   @override
//   State<OpacityExample> createState() => OpacityexampleState();
// }

// class OpacityexampleState extends State<OpacityExample> {
//   Map<String, int> ages = {"Aziz": 350, "Habib": 32, "Tahid": 27, "Shahid": 18};
//   String result = ',';

//   String maxAgePerson(Map<String, int> age) {
//     var maxAge = age.entries.reduce((a, b) => a.value >= b.value ? a : b);
//     return "${maxAge.key} (${maxAge.value} years)";
//   }

//   void main() {
//     setState(() {
//       result = maxAgePerson(ages);
//     });
//   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Name Button', style: TextStyle(fontSize: 24)),
// //         backgroundColor: Colors.teal,
// //         centerTitle: true,
// //       ),
// //       body: Center(
// //         child: Padding(
// //           padding: EdgeInsets.all(16),
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: [
// //               ElevatedButton(
// //                 onPressed: main,
// //                 child: Text('Show Max Ages People'),
// //               ),
// //               SizedBox(height: 20),
// //               Text(result),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
////////////////////////Generate Button///////////
// import 'package:flutter/material.dart';

// class OpacityExample extends StatefulWidget {
//   OpacityExample({super.key});

//   @override
//   State<OpacityExample> createState() => OpacityexampleState();
// }

// class OpacityexampleState extends State<OpacityExample> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Name Button', style: TextStyle(fontSize: 24)),
//         backgroundColor: Colors.teal,
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Padding(
//           padding: EdgeInsets.all(16),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [generateButtons(operations)],
//           ),
//         ),
//       ),
//     );
//   }
// }
///////////////////////////Prime Number///////////////
// import 'package:flutter/material.dart';

// class OpacityExample extends StatefulWidget {
//   OpacityExample({super.key});

//   @override
//   State<OpacityExample> createState() => OpacityexampleState();
// }

// class OpacityexampleState extends State<OpacityExample> {
//   List<int> numbers = [5, 6, 8, 9, 11, 13, 15, 17, 20, 22, 23, 24, 29, 31];
//   List<int> primeNumbers = [];
//   bool isPrime(int number) {
//     if (number < 2) return false;
//     for (int i = 2; i <= number ~/ 2; i++) {
//       if (number % i == 0) return false;
//     }
//     return true;
//   }

//   void main() {
//     List<int> primeList = [];
//     for (int number in numbers) {
//       if (isPrime(number)) {
//         primeList.add(number);
//       }
//     }
//     setState(() {
//       primeNumbers = primeList;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Find Prime Number', style: TextStyle(fontSize: 24)),
//         backgroundColor: Colors.teal,
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(onPressed: main, child: Text("Show Prime Number")),
//             SizedBox(height: 20),
//             Text(
//               "PrimeNumbers are",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 10),
//             Text(
//               primeNumbers.join(','),
//               style: TextStyle(fontSize: 18, color: Colors.red),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// ///////////Button by Generate///////////////////
// import 'package:flutter/material.dart';

// class OpacityExample extends StatefulWidget {
//   OpacityExample({super.key});
//   @override
//   State<OpacityExample> createState() => OpacityExampleState();
// }

// class OpacityExampleState extends State<OpacityExample> {
//   final List<String> names = ["Ahan", 'Safwan', "Shohid", 'Tahid'];

//   String SelectedName = "";
//   int selectedIndex = 0;

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Name Button', style: TextStyle(fontSize: 24)),
//         backgroundColor: Colors.teal,
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               SelectedName,
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.teal,
//               ),
//             ),
//             SizedBox(height: 20),
//             ...List.generate(names.length, (index) {
//               bool isSelected = selectedIndex == index;
//               return Padding(
//                 padding: EdgeInsets.symmetric(vertical: 5),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     minimumSize: Size(200, 50),
//                     backgroundColor: isSelected ? Colors.blue : Colors.amber,
//                     textStyle: TextStyle(
//                       fontSize: 22,
//                       fontWeight: FontWeight.w200,
//                     ),
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       SelectedName = names[index];
//                       selectedIndex = index;
//                     });
//                   },
//                   child: Text(names[index]),
//                 ),
//               );
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }

///////Boutton //////////

// import 'package:flutter/material.dart';

// class OpacityExample extends StatefulWidget {
//   OpacityExample({super.key});
//   @override
//   State<OpacityExample> createState() => OpacityExampleState();
// }

// class OpacityExampleState extends State<OpacityExample> {
//   final List<String> names = ["Ahan", 'Safwan', "Shohid", 'Tahid'];
//   int currentIndex = 0;
//   String displayedName = "";
//   void showNextName() {
//     if (currentIndex < names.length) {
//       setState(() {
//         displayedName = names[currentIndex];
//         currentIndex++;
//       });
//     } else {
//       setState(() {
//         displayedName = "All names havebeen showed";
//         currentIndex = 0;
//       });
//     }
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Name Button')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               displayedName,
//               style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.teal,
//                 minimumSize: Size(200, 50),
//                 textStyle: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               onPressed: showNextName,
//               child: Text('Show Name'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
///////////Like Button Widget//////////
//
// import 'package:flutter/material.dart';

// class OpacityExample extends StatefulWidget {
//   OpacityExample({super.key});
//   @override
//   State<OpacityExample> createState() => OpacityExampleState();
// }

// class OpacityExampleState extends State<OpacityExample> {
//   bool isLiked = false;
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: IconButton(
//           onPressed: () {
//             setState(() {
//               isLiked = !isLiked;
//             });
//           },
//           icon: Icon(
//             isLiked ? Icons.favorite : Icons.favorite_border,
//             color: isLiked ? Colors.red : Colors.grey,
//             size: 32,
//           ),
//         ),
//       ),
//     );
//   }
// }

////////////////SnackBar Widget With Tooltips////////
//
// import 'package:flutter/material.dart';

// class OpacityExample extends StatelessWidget {
//   OpacityExample({super.key});

//   Widget build(BuildContext context) {
//     void MySnackBar() => ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//         content: Text("ButtonTapped"),
//         duration: Duration(milliseconds: 500),
//       ),
//     );
//     return Scaffold(
//       body: ListView(
//         padding: EdgeInsets.all(16),
//         children: [
//           Column(
//             children: [
//               Text("Raised Button"),
//               OverflowBar(
//                 alignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton(
//                     onPressed: MySnackBar,
//                     child: Text("ElevatedButton"),
//                   ),
//                   ElevatedButton(
//                     onPressed: null,
//                     child: Text("DisabledElevatedButton"),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           Divider(),
//           Column(
//             children: [
//               Text("Raised Button"),
//               OverflowBar(
//                 alignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   TextButton(onPressed: MySnackBar, child: Text("TextButton")),
//                   TextButton(
//                     onPressed: null,
//                     child: Text("DisabledTextButton"),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           Divider(),
//           Column(
//             children: [
//               Text("Raised Button"),
//               OverflowBar(
//                 alignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   OutlinedButton(
//                     onPressed: MySnackBar,
//                     child: Text("OutlinedButton"),
//                   ),
//                   OutlinedButton(
//                     onPressed: null,
//                     child: Text("DisabledOutlinedButton"),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           Divider(),
//           Column(
//             children: [
//               Text('Tooltips'),
//               Center(
//                 child: IconButton(
//                   iconSize: 32,
//                   onPressed: MySnackBar,
//                   icon: Icon(Icons.call),
//                   tooltip: "Please a phone call",
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//////////// Navigation Tab Bar/////////
// import 'package:flutter/material.dart';

// class OpacityExample extends StatelessWidget {
//   OpacityExample({super.key});

//   final _itemPages = [
//     const Center(child: Icon(Icons.cloud, size: 64, color: Colors.teal)),
//     const Center(child: Icon(Icons.alarm, size: 64, color: Colors.teal)),
//     const Center(child: Icon(Icons.forum, size: 64, color: Colors.teal)),
//   ];
//   final _items = [
//     const Tab(icon: Icon(Icons.cloud), text: "Tab1"),
//     const Tab(icon: Icon(Icons.alarm), text: "Tab2"),
//     const Tab(icon: Icon(Icons.forum), text: "Tab3"),
//   ];
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: _items.length,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text("Appbar"),
//           backgroundColor: Colors.cyan,
//           bottom: TabBar(tabs: _items),
//         ),
//         body: TabBarView(children: _itemPages),
//       ),
//     );
//   }
// }

//////////// Some Useful StatefulWidget////////

// import 'package:flutter/material.dart';

// class OpacityExample extends StatefulWidget {
//   const OpacityExample({super.key});

//   @override
//   State<OpacityExample> createState() => _OpacityExampleState();
// }

// class _OpacityExampleState extends State<OpacityExample> {
//   bool _switchVal = true;
//   bool _checkBoxVal = true;
//   double _slider1Val = 0.5;
//   double _slider2Val = 50;
//   int _radioVal = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('AppBar'),
//         centerTitle: true,
//         toolbarHeight: 60,
//         backgroundColor: Colors.amber,
//       ),
//       body: Container(
//         padding: EdgeInsets.all(10),
//         child: ListView(
//           children: [
//             Text("Switch"),
//             Center(
//               child: Switch(
//                 onChanged: (bool value) {
//                   setState(() => this._switchVal = value);
//                 },
//                 value: this._switchVal,
//               ),
//             ),
//             Text("Disabled Switch"),
//             Center(child: Switch(value: false, onChanged: null)),
//             const Divider(),
//             Text("Checkbox"),
//             Checkbox(
//               value: this._checkBoxVal,
//               onChanged: (bool? value) {
//                 if (value != null) {
//                   setState(() => this._checkBoxVal = value);
//                 }
//               },
//             ),
//             Text("Disabled Checkbox"),
//             Checkbox(tristate: true, value: null, onChanged: null),
//             Divider(),
//             Text("Slider"),
//             Slider(
//               onChanged: (double value) {
//                 setState(() => this._slider1Val = value);
//               },
//               value: this._slider1Val,
//             ),
//             Text("Slider with Division and Label"),
//             Slider(
//               value: _slider2Val,
//               max: 100,
//               divisions: 5,
//               label: "${_slider2Val.round()}",
//               onChanged: (double value) {
//                 setState(() => this._slider2Val = value);
//               },
//             ),
//             Divider(),
//             Text("LinearProgressIndicator"),
//             LinearProgressIndicator(),
//             Divider(),
//             Text("CircularProgressIndicator"),
//             Center(child: CircularProgressIndicator()),
//             Divider(),
//             Text("Radio"),
//             Row(
//               children:
//                   [0, 1, 2, 3]
//                       .map(
//                         (int index) => Radio<int>(
//                           value: index,
//                           groupValue: this._radioVal,
//                           onChanged: (int? value) {
//                             if (value != null) {
//                               setState(() => this._radioVal = value);
//                             }
//                           },
//                         ),
//                       )
//                       .toList(),
//             ),
//             Divider(),
//           ],
//         ),
//       ),
//     );
//   }
// }

///////////One page to another page by using OnTap/////////

// import 'package:flutter/material.dart';

// class OpacityExample extends StatelessWidget {
//   const OpacityExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Home Page'), centerTitle: true),
//       body: Center(
//         child: Container(
//           child: ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Detailspage()),
//               );
//             },
//             child: Text('Go to page'),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Detailspage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Details Page')),
//       body: Center(
//         child: Container(width: 200, height: 200, color: Colors.blue),
//       ),
//     );
//   }
// }

//////////Card with inkWell Widget//////////////
// import 'package:flutter/material.dart';

// class OpacityExample extends StatelessWidget {
//   const OpacityExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: EdgeInsets.all(8),
//       children: [
//         Card(
//           color: Colors.red,
//           elevation: 10,
//           child: SizedBox(
//             height: 100,
//             child: Center(
//               child: Text('Card 1', style: TextStyle(fontSize: 20)),
//             ),
//           ),
//         ),
//         Card(
//           margin: EdgeInsets.all(20),
//           color: Colors.green,

//           child: SizedBox(
//             height: 100,
//             child: InkWell(
//               splashColor: Colors.deepOrange,
//               onTap: () {},
//               child: Center(
//                 child: Text(
//                   'Card 2 (with Inkwell effect on tap)',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Card(
//           color: Colors.blue,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(30),
//               topRight: Radius.elliptical(40, 80),
//             ),
//           ),
//           child: SizedBox(
//             height: 100,

//             child: Center(
//               child: Text(
//                 'Card 3 (with custom border radious)',
//                 style: TextStyle(fontSize: 20),
//               ),
//             ),
//           ),
//         ),
//         Card(
//           color: Colors.white,
//           child: Column(
//             children: [
//               SizedBox(
//                 height: 200,
//                 child: Stack(
//                   children: [
//                     Positioned.fill(
//                       child: Image.asset(
//                         'assets/images/dp.png',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 16,
//                       left: 16,
//                       right: 16,
//                       child: FittedBox(
//                         fit: BoxFit.scaleDown,
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           'Card 4(Complex Example)',
//                           style: Theme.of(context).textTheme.headlineSmall!
//                               .copyWith(color: Colors.white),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               OverflowBar(
//                 alignment: MainAxisAlignment.end,
//                 children: [
//                   TextButton(onPressed: () {}, child: Text('Share')),
//                   TextButton(onPressed: () {}, child: Text('Explore')),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

///////// Opacity trail 3/////////
// import 'package:flutter/material.dart';

// class OpacityExample extends StatefulWidget {
//   const OpacityExample({super.key});
//   @override
//   State<OpacityExample> createState() => _OpacityExampleState();
// }

// class _OpacityExampleState extends State<OpacityExample> {
//   double _Opacity1 = 1.0, _Opacity2 = 1.0, _Opacity3 = 1.0;
//   Widget _coloredSquare(Color color) {
//     return Container(height: 100, width: 100, color: color);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Padding(
//         padding: EdgeInsets.all(8),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             const Text(
//               'Click on colored squares below to make them invisible,click once again to',
//             ),

//             GestureDetector(
//               onTap: () {
//                 setState(() => this._Opacity1 = 1 - this._Opacity1);
//               },
//               child: Opacity(
//                 opacity: _Opacity1,
//                 child: _coloredSquare(Colors.red),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 setState(() => this._Opacity2 = 1 - this._Opacity2);
//               },
//               child: Opacity(
//                 opacity: _Opacity2,
//                 child: _coloredSquare(Colors.green),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 setState(() => this._Opacity3 = 1 - this._Opacity3);
//               },
//               child: Opacity(
//                 opacity: _Opacity3,
//                 child: _coloredSquare(Colors.blue),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//////// Opacity Trail 2//////

// import 'package:flutter/material.dart';

// class OpacityExample extends StatefulWidget {
//   const OpacityExample({super.key});
//   @override
//   State<OpacityExample> createState() => _OpacityExampleState();
// }

// class _OpacityExampleState extends State<OpacityExample> {
//   bool _isVisible = true;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: Text('Animated Opacity Example')),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               AnimatedOpacity(
//                 opacity: _isVisible ? 1 : 0.0,
//                 duration: Duration(seconds: 1),
//                 child: Container(height: 200, width: 200, color: Colors.blue),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     _isVisible = !_isVisible;
//                   });
//                 },
//                 child: Text(_isVisible ? "Hide" : "Show"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// /////////////////////////////////////////////////////
var operations = ['Create', "Update", "Delete"];

Widget generateButtons(items) {
  var buttons = <Widget>[];
  for (var item in items) {
    buttons.add(ElevatedButton(onPressed: () {}, child: Text(item)));
  }

  return Column(children: buttons);
}
