import 'package:flutter/material.dart';
import 'package:learning_ai/dart_learning/ShowDailog.dart';

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            alignment: Alignment.center,
            height: 1200,
            width: 400,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.arrow_back),
                ),
                SizedBox(height: 20),
                Container(
                  child: Text(
                    'Choose Recipient',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  ),
                ),
                Container(
                  child: Text(
                    'Please select your recipient to send money.',
                    style: TextStyle(fontSize: 14, color: Colors.blueGrey),
                  ),
                ),
                SizedBox(height: 25),
                Container(
                  width: 800,
                  height: 650,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 320,
                        height: 50,
                        child: TextField(
                          onSubmitted: (value) {
                            showDailogBox(context);
                            // showModalBottomSheet<void>(
                            //   context: context,
                            //   enableDrag: false,
                            //   showDragHandle: false,
                            //   backgroundColor: Colors.transparent,
                            //   sheetAnimationStyle: AnimationStyle.noAnimation,
                            //   isScrollControlled: true,
                            //   builder: (BuildContext context) {
                            //     return Container(
                            //       height: MediaQuery.of(context).size.height,
                            //       width: MediaQuery.of(context).size.width,
                            //       child: Column(
                            //         children: <Widget>[
                            //           SizedBox(height: 145),
                            //           Container(
                            //             width: 320,
                            //             height: 50,
                            //             child: TextField(
                            //               decoration: InputDecoration(
                            //                 border: OutlineInputBorder(
                            //                   borderRadius:
                            //                       BorderRadius.circular(30),
                            //                   borderSide: BorderSide.none,
                            //                 ),
                            //                 filled: true,
                            //                 fillColor: Color(0xffE8E8E8),
                            //                 hintText: ' Write',
                            //                 labelText: "Search Here",
                            //                 prefixIcon: Icon(Icons.search),
                            //               ),
                            //             ),
                            //           ),
                            //           ElevatedButton(
                            //             child: const Text('Close BottomSheet'),
                            //             onPressed: () => Navigator.pop(context),
                            //           ),
                            //         ],
                            //       ),
                            //     );
                            //   },
                            // );
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Color(0xffE8E8E8),
                            hintText: ' Write',
                            labelText: "Search Here",
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        child: Text(
                          'Most Recent',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                  child: Image.asset(
                                    'assets/images/dp.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Md.Ajijur Rahaman',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    'ajij3991@gmail.com',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          Container(
                            child: Text(
                              '-\$100',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                  child: Image.asset(
                                    'assets/images/dp.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Md.Ajijur Rahaman',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    'ajij3991@gmail.com',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          Container(
                            child: Text(
                              '-\$100',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                  child: Image.asset(
                                    'assets/images/dp.png',
                                    height: 30,
                                    width: 30,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Md.Ajijur Rahaman',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  Text(
                                    'ajij3991@gmail.com',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          Container(
                            child: Text(
                              '-\$100',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(endIndent: 10),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                              child: Image.asset(
                                'assets/images/dp.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Md.Ajijur Rahaman',
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                'ajij3991@gmail.com',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 80),
                          Container(
                            child: Text(
                              '-\$100',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(endIndent: 10),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                              child: Image.asset(
                                'assets/images/dp.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Md.Ajijur Rahaman',
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                'ajij3991@gmail.com',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 80),
                          Container(
                            child: Text(
                              '-\$100',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(endIndent: 10),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                              child: Image.asset(
                                'assets/images/dp.png',
                                height: 30,
                                width: 30,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Md.Ajijur Rahaman',
                                style: TextStyle(fontSize: 14),
                              ),
                              Text(
                                'ajij3991@gmail.com',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 80),
                          Container(
                            child: Text(
                              '-\$100',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.pinkAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
