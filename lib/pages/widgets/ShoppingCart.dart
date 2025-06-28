// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'ফলমূল হিসাব',
//       theme: ThemeData(primarySwatch: Colors.green),
//       home: FruitCalculator(),
//     );
//   }
// }

// class FruitCalculator extends StatefulWidget {
//   @override
//   _FruitCalculatorState createState() => _FruitCalculatorState();
// }

// class _FruitCalculatorState extends State<FruitCalculator> {
//   List<Map<String, dynamic>> fruits = [
//     {'name': 'আপেল', 'pricePerKg': 200.0, 'quantity': 0},
//     {'name': 'কমলা', 'pricePerKg': 300.0, 'quantity': 0},
//     {'name': 'কলা', 'pricePerKg': 60.0, 'quantity': 0},
//   ];

//   double calculateSubtotal(Map<String, dynamic> fruit) {
//     return fruit['pricePerKg'] * fruit['quantity'];
//   }

//   double calculateTotal() {
//     double total = 0;
//     fruits.forEach((fruit) {
//       total += calculateSubtotal(fruit);
//     });
//     return total;
//   }

//   void updateQuantity(int index, int delta) {
//     setState(() {
//       fruits[index]['quantity'] += delta;
//       if (fruits[index]['quantity'] < 0) {
//         fruits[index]['quantity'] = 0;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     List<Widget> fruitWidgets = [];
//     fruits.asMap().forEach((index, fruit) {
//       fruitWidgets.add(
//         Card(
//           elevation: 2,
//           margin: EdgeInsets.symmetric(vertical: 8),
//           child: Padding(
//             padding: const EdgeInsets.all(12.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   '${fruit['name']} (৳${fruit['pricePerKg']}/কেজি)',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   children: [
//                     IconButton(
//                       onPressed: () => updateQuantity(index, -1),
//                       icon: Icon(Icons.remove_circle, color: Colors.red),
//                     ),
//                     Text(
//                       '${fruit['quantity']} কেজি',
//                       style: TextStyle(fontSize: 16),
//                     ),
//                     IconButton(
//                       onPressed: () => updateQuantity(index, 1),
//                       icon: Icon(Icons.add_circle, color: Colors.green),
//                     ),
//                     Spacer(),
//                     Text(
//                       '৳${calculateSubtotal(fruit).toStringAsFixed(2)}',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     });

//     return Scaffold(
//       appBar: AppBar(title: Text('ফলমূল হিসাব')),
//       body: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           children: [
//             Expanded(child: ListView(children: fruitWidgets)),
//             Divider(thickness: 2),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 12.0),
//               child: Text(
//                 'সর্বমোট: ৳${calculateTotal().toStringAsFixed(2)}',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

List<Map<String, dynamic>> fruits = [
  {"name": "Banana", "price": 100, 'quantity': 1},
  {"name": "Applee", "price": 400, 'quantity': 1},
  {"name": "Mangoo", "price": 150, 'quantity': 1},
  {"name": "Orangee", 'price': 300, 'quantity': 1},
];

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    int getTotalPrice() {
      int total = 0;
      fruits.forEach((fruit) {
        print(fruit['price']);
        total += ((fruit['price'] as int) * (fruit['quantity'] as int));
      });
      return total;
    }

    void decrement(index) {
      setState(() {
        if (fruits[index]['quantity'] != null) {
          int quantity = fruits[index]['quantity'] as int;

          if (quantity > 1) {
            fruits[index]['quantity'] = quantity - 1;
          }
        }
      });
    }

    void inecrement(index) {
      setState(() {
        if (fruits[index]['quantity'] != null) {
          int quantity = fruits[index]['quantity'] as int;

          fruits[index]['quantity'] = quantity + 1;
        }
      });
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'List of Fruits',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: fruits.length,
                  itemBuilder: (context, index) {
                    var fruit = fruits[index];
                    return Card(
                      elevation: 2,
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${fruit['name']} (${fruit['price']})Taka',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    decrement(index);
                                  },
                                  icon: Icon(
                                    Icons.remove_circle,
                                    color: Colors.red,
                                  ),
                                ),

                                Text(
                                  ' ${fruits[index]['quantity']}Kg',
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(width: 5),
                                ElevatedButton(
                                  onPressed: () {
                                    inecrement(index);
                                  },
                                  child: Icon(
                                    Icons.add_circle,
                                    color: Colors.green,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  " = ${((fruits[index]['price'] as int) * (fruits[index]['quantity'] as int)).toStringAsFixed(2)}",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),

              Divider(thickness: 1),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'Total = ${getTotalPrice().toStringAsFixed(2)}Taka',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
