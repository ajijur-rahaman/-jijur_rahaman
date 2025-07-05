import 'package:flutter/material.dart';
import 'package:learning_ai/E.Design/Cart.dart';

class Cheek_Out extends StatefulWidget {
  const Cheek_Out({super.key});
  @override
  State<Cheek_Out> createState() => Cheek_OutState();
}

class Cheek_OutState extends State<Cheek_Out> {
  bool _cheekBox = false;
  int _selectedIndex = 0;
  final List<Map<String, String>> pages = [
    {
      'price': 'Free',
      'title': 'Delivery to home',
      'description': 'Delivery from 3 to 7 business days',
    },
    {
      'price': '\$ 9.90',
      'title': 'Delivery to home',
      'description': 'Delivery from 4 to 6 business days',
    },
    {
      'price': '\$ 9.90',
      'title': 'Fast Delivery',
      'description': 'Delivery from 2 to 3 business days',
    },
  ];
  final List<String> fieldLabels = [
    'First name *',
    'Last name *',
    'Country *',
    'Street name *',
    'City *',
    'State / Province',
    'Zip-code *',
    'Phone number *',
  ];
  late List<FocusNode> _focusNode;
  late List<bool> _showErrorText;
  @override
  void initState() {
    super.initState();
    _focusNode = List.generate(7, (index) => FocusNode());
    _showErrorText = List.generate(7, (index) => false);
    for (int i = 0; i < _focusNode.length; i++) {
      setState(() {
        _focusNode[i].addListener(() {
          setState(() {
            _showErrorText[i] = _focusNode[i].hasFocus;
          });
        });
      });
    }
  }

  @override
  void dispose() {
    for (var node in _focusNode) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(30),
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
                                MaterialPageRoute(builder: (context) => Cart()),
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
                          'Cheek Out',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/images/icon1.png',
                    fit: BoxFit.contain,
                    width: 280,
                    height: 40,
                  ),
                  SizedBox(height: 30),
                  Align(alignment: Alignment.topLeft, child: Text('STEP 2')),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Shipping',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Container(
                child: Column(
                  children: List.generate(7, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: TextField(
                        focusNode: _focusNode[index],
                        decoration: InputDecoration(
                          hintText: fieldLabels[index],
                          hintStyle: TextStyle(fontSize: 12),

                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 0.5,
                              color: Colors.grey.withOpacity(.3),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(width: 1, color: Colors.red),
                          ),
                          errorText:
                              _showErrorText[index]
                                  ? "Field is required"
                                  : null,
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(40),
              child: Container(
                width: double.infinity,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shipping method',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    ...List.generate(pages.length, (index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color:
                                    _selectedIndex == index
                                        ? Colors.grey.withOpacity(.2)
                                        : Colors.white,
                                width: 1,
                              ),
                              bottom: BorderSide(
                                color:
                                    _selectedIndex == index
                                        ? Colors.grey.withOpacity(.2)
                                        : Colors.white,
                                width: 1,
                              ),
                            ),
                            color:
                                _selectedIndex == index
                                    ? Colors.grey.withOpacity(.0001)
                                    : Colors.white,
                          ),
                          height: 120,
                          width: double.infinity,
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, top: 30),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,

                                    border: Border.all(
                                      color:
                                          _selectedIndex == index
                                              ? Color(0xff508A7B)
                                              : Color(0xff43484B),
                                      width: _selectedIndex == index ? 10 : 1.5,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          pages[index]['price']!,
                                          style: TextStyle(
                                            height: .7,
                                            fontSize: 23,
                                          ),
                                        ),
                                        SizedBox(width: 20),
                                        Text(
                                          pages[index]['title']!,
                                          style: TextStyle(
                                            height: .7,
                                            fontSize: 23,
                                            color: Color(
                                              0xff43484B,
                                            ).withOpacity(.8),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Text(
                                      pages[index]['description']!,
                                      style: TextStyle(
                                        fontSize: 17,
                                        color: Color(
                                          0xff43484B,
                                        ).withOpacity(.4),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                    SizedBox(height: 20),
                    Text(
                      'Coupon Code',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      width: double.infinity,
                      height: 70,

                      decoration: BoxDecoration(
                        color: Color(0xffF7F7F8),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Have a code? type it here...',
                          hintStyle: TextStyle(color: Color(0xffCBCDD8)),

                          suffixText: 'Validate',
                          suffixStyle: TextStyle(color: Color(0xff508A7B)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Billing Address',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    //CheckBox Making
                    Row(
                      children: [
                        Checkbox(
                          value: this._cheekBox,
                          onChanged: (bool? value) {
                            if (value != null) {
                              setState(() {
                                this._cheekBox = value;
                              });
                            }
                          },
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Copy address data from shipping',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff575757),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text(
                          'Continue to payment',
                          style: TextStyle(fontSize: 20),
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

// class fieldItems extends StatelessWidget {
//   String hintText;
//   fieldItems({required this.hintText, super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 5),
//       child: TextField(
//         decoration: InputDecoration(
//           hintText: hintText,
//           hintStyle: TextStyle(fontSize: 12),

//           enabledBorder: UnderlineInputBorder(
//             borderSide: BorderSide(
//               width: 0.5,
//               color: Colors.grey.withOpacity(.3),
//             ),
//           ),
//           focusedBorder: UnderlineInputBorder(
//             borderSide: BorderSide(width: 1, color: Colors.red),
//           ),
//         ),
//       ),
//     );
//   }
// }
