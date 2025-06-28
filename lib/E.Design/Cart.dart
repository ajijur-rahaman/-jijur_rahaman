import 'package:flutter/material.dart';
import 'package:learning_ai/E.Design/Product_Full.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});
  @override
  State<Cart> createState() => CartState();
}

class CartState extends State<Cart> {
  final List<Map<String, String>> items = [
    {
      'image': 'assets/images/g000.png',
      'title': 'Sportwear Set',
      'price': '80.00',
      'description': 'Size: L  |  Color: Cream',
    },
    {
      'image': 'assets/images/g00.png',
      'title': 'Turtleneck Sweater',
      'price': '39.99',
      'description': 'Size: M  |  Color: White',
    },
    {
      'image': 'assets/images/sdf.png',
      'title': 'Cotton T-shirt',
      'price': '30.00',
      'description': 'Size: L  |  Color: Black',
    },
  ];
  List<int> counts = [1, 1, 1];

  void _increment(int index) {
    setState(() {
      counts[index]++;
    });
  }

  void _decrement(int index) {
    setState(() {
      if (counts[index] > 0) counts[index]--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        elevation: 4,
                        child: Container(
                          height: 45,
                          width: 45,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Product_Full(),
                                ),
                              );
                            },
                            child: Icon(Icons.arrow_back_ios_new),
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 2 - 100,
                        ),
                        child: Text(
                          'Your Cart',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  ...List.generate(items.length, (index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: CustomContainer(
                        image: items[index]['image']!,
                        title: items[index]['title']!,
                        price: items[index]['price']!,
                        description: items[index]['description']!,
                        number: "${counts[index]}",
                        onDecrement: () => _decrement(index),
                        onIncrement: () => _increment(index),
                      ),
                    );
                  }),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 280,
              width: double.infinity,

              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(title1: 'Product price', price1: '\$110'),
                    Divider(color: Color(0xffE8E8E8)),
                    CustomText(title1: 'Shipping', price1: 'Freeship'),
                    Divider(color: Color(0xffE8E8E8)),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subtotal', style: TextStyle(fontSize: 18)),
                          Text(
                            '\$110',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 330,
                      height: 55,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Center(
                        child: Text(
                          'Proceed to checkout',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String description;
  final String number;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  const CustomContainer({
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.number,
    required this.onDecrement,
    required this.onIncrement,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: Offset(0, 2),
            spreadRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffFBFBFB),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              color: Colors.blueGrey.withOpacity(0.20),
            ),
            height: 120,
            width: 80,
            child: Image.asset(image, fit: BoxFit.cover),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                price,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(description, style: TextStyle(fontSize: 10)),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 0, right: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.check_box_rounded, color: Colors.green),
                Container(
                  width: 80,
                  height: 35,

                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Color(0xff000000).withOpacity(0.5),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: onDecrement,
                        child: Icon(Icons.remove, size: 15),
                      ),
                      GestureDetector(
                        onTap: null,
                        child: Text(number, style: TextStyle(fontSize: 15)),
                      ),
                      GestureDetector(
                        onTap: onIncrement,
                        child: Icon(Icons.add, size: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String title1;
  final String price1;

  const CustomText({required this.title1, required this.price1});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title1,
            style: TextStyle(fontSize: 16, color: Color(0xff8A8A8F)),
          ),
          Text(
            price1,
            style: TextStyle(fontSize: 18, color: Color(0xff000000)),
          ),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:learning_ai/E.Design/Product_Full.dart';

// class Cart extends StatefulWidget {
//   const Cart({super.key});
//   @override
//   State<Cart> createState() => _CartState();
// }

// class _CartState extends State<Cart> {
//   final List<Map<String, String>> _items = [
//     {
//       'image': 'assets/images/g000.png',
//       'title': 'Sportwear Set',
//       'price': '80.00',
//       'description': 'Size: L  |  Color: Cream',
//     },
//     {
//       'image': 'assets/images/g00.png',
//       'title': 'Turtleneck Sweater',
//       'price': '39.99',
//       'description': 'Size: M  |  Color: White',
//     },
//     {
//       'image': 'assets/images/sdf.png',
//       'title': 'Cotton T-shirt',
//       'price': '30.00',
//       'description': 'Size: L  |  Color: Black',
//     },
//   ];

//   List<int> _counts = [1, 1, 1];

//   void _increment(int index) {
//     setState(() {
//       _counts[index]++;
//     });
//   }

//   void _decrement(int index) {
//     setState(() {
//       if (_counts[index] > 0) {
//         _counts[index]--;
//       }
//     });
//   }

//   double get subtotal {
//     double total = 0;
//     for (int i = 0; i < _items.length; i++) {
//       total += double.parse(_items[i]['price']!) * _counts[i];
//     }
//     return total;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Card(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(100),
//                         ),
//                         elevation: 4,
//                         child: SizedBox(
//                           height: 45,
//                           width: 45,
//                           child: GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (context) => Product_Full(),
//                                 ),
//                               );
//                             },
//                             child: const Icon(Icons.arrow_back_ios_new),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(
//                           left: MediaQuery.of(context).size.width / 2 - 100,
//                         ),
//                         child: const Text(
//                           'Your Cart',
//                           style: TextStyle(fontSize: 20),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 10),
//                   ...List.generate(_items.length, (index) {
//                     return Padding(
//                       padding: const EdgeInsets.only(bottom: 20),
//                       child: CustomContainer(
//                         image: _items[index]['image']!,
//                         title: _items[index]['title']!,
//                         price: '\$${_items[index]['price']}',
//                         description: _items[index]['description']!,
//                         number: '${_counts[index]}',
//                         onDecrement: () => _decrement(index),
//                         onIncrement: () => _increment(index),
//                       ),
//                     );
//                   }),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 10),
//             _buildSummary(),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSummary() {
//     return Container(
//       height: 280,
//       width: double.infinity,
//       decoration: const BoxDecoration(
//         color: Color(0xffFFFFFF),
//         borderRadius: BorderRadius.only(
//           topRight: Radius.circular(12),
//           topLeft: Radius.circular(12),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             CustomText(
//               title1: 'Product price',
//               price1: '\$${subtotal.toStringAsFixed(2)}',
//             ),
//             const Divider(color: Color(0xffE8E8E8)),
//             const CustomText(title1: 'Shipping', price1: 'Freeship'),
//             const Divider(color: Color(0xffE8E8E8)),
//             Padding(
//               padding: const EdgeInsets.all(12),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   const Text('Subtotal', style: TextStyle(fontSize: 18)),
//                   Text(
//                     '\$${subtotal.toStringAsFixed(2)}',
//                     style: const TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               width: 330,
//               height: 55,
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.circular(35),
//               ),
//               child: const Center(
//                 child: Text(
//                   'Proceed to checkout',
//                   style: TextStyle(color: Colors.white, fontSize: 20),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ✅ CustomContainer আগের মতোই রাখা হয়েছে
// class CustomContainer extends StatelessWidget {
//   final String image;
//   final String title;
//   final String price;
//   final String description;
//   final String number;
//   final VoidCallback onIncrement;
//   final VoidCallback onDecrement;

//   const CustomContainer({
//     required this.image,
//     required this.title,
//     required this.price,
//     required this.description,
//     required this.number,
//     required this.onDecrement,
//     required this.onIncrement,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 100,
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.1),
//             blurRadius: 8,
//             offset: const Offset(0, 2),
//             spreadRadius: 1,
//           ),
//         ],
//         borderRadius: BorderRadius.circular(20),
//         color: const Color(0xffFBFBFB),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(20),
//                 bottomLeft: Radius.circular(20),
//               ),
//               color: Colors.blueGrey.withOpacity(0.20),
//             ),
//             height: 120,
//             width: 80,
//             child: Image.asset(image, fit: BoxFit.cover),
//           ),
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 title,
//                 style: const TextStyle(
//                   fontSize: 12,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 5),
//               Text(
//                 price,
//                 style: const TextStyle(
//                   fontSize: 12,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 5),
//               Text(description, style: const TextStyle(fontSize: 10)),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 0, right: 12),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 const Icon(Icons.check_box_rounded, color: Colors.green),
//                 Container(
//                   width: 100,
//                   height: 35,
//                   decoration: BoxDecoration(
//                     border: Border.all(
//                       width: 2,
//                       color: const Color(0xff000000).withOpacity(0.5),
//                     ),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       GestureDetector(
//                         onTap: onDecrement,
//                         child: Icon(Icons.remove, size: 15),
//                       ),
//                       GestureDetector(
//                         onTap: null,
//                         child: Text(
//                           number,
//                           style: const TextStyle(fontSize: 15),
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: onIncrement,
//                         child: const Icon(Icons.add, size: 15),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ✅ CustomText আগের মতোই রাখা হয়েছে
// class CustomText extends StatelessWidget {
//   final String title1;
//   final String price1;

//   const CustomText({required this.title1, required this.price1});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(12),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             title1,
//             style: const TextStyle(fontSize: 16, color: Color(0xff8A8A8F)),
//           ),
//           Text(
//             price1,
//             style: const TextStyle(fontSize: 18, color: Color(0xff000000)),
//           ),
//         ],
//       ),
//     );
//   }
// }
