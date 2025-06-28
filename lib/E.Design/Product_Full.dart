import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'F_result.dart';
import 'H_PageFull.dart';
import 'package:learning_ai/Widget_Model.dart/Rating.dart';

class Product_Full extends StatefulWidget {
  const Product_Full({super.key});
  @override
  State<Product_Full> createState() => Product_FullState();
}

class Product_FullState extends State<Product_Full> {
  int selectedCircle = 0;
  final List<String> circleLabels = ['S', 'M', "L"];
  int _selectedIndex = 0;
  final List<Color> colorLabels = [
    Color(0xffE7C0A7),
    Color(0xff050302),
    Color(0xffEE6969),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Top Image and Back Button Section
            Stack(
              children: [
                Positioned(
                  top: 58,
                  left: MediaQuery.of(context).size.width / 2 - 100,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Color(0xffEACAB7).withOpacity(0.3),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 360,
                  child: Image.asset(
                    'assets/images/g000.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                        elevation: 4,
                        child: Container(
                          width: 45,
                          height: 45,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => F_Result(),
                                ),
                              );
                            },
                            child: Icon(Icons.arrow_back_ios_new),
                          ),
                        ),
                      ),
                      CardModel(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Container(
                        padding: EdgeInsets.all(2),
                        margin: EdgeInsets.symmetric(horizontal: 2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              _selectedIndex == index
                                  ? Border.all(
                                    color: Color(0xff4F4F4F),
                                    width: 1.5,
                                  )
                                  : Border.all(color: Colors.transparent),
                        ),
                        child: Container(
                          width: _selectedIndex == index ? 7 : 4,
                          height: _selectedIndex == index ? 7 : 4,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff4F4F4F),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),

            // Bottom Content Section
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 2,
                    spreadRadius: 2,
                  ),
                ],
              ),
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Title & Rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sportwear Set'),
                          StarRating(
                            rating: 3.5,
                            size: 16,
                            color: Colors.green,
                          ),
                        ],
                      ),
                      Text('\$ 80.00'),
                    ],
                  ),
                  Divider(color: Color(0xffF3F3F6)),
                  SizedBox(height: 5),

                  // Color & Size Selectors
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Color Selection
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Color',
                            style: TextStyle(color: Color(0xffC5C5C5)),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: List.generate(3, (index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedIndex = index;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(4),
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow:
                                        _selectedIndex == index
                                            ? [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                  0.2,
                                                ),
                                                blurRadius: 4,
                                                spreadRadius: 2,
                                              ),
                                            ]
                                            : [],
                                  ),
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: colorLabels[index],
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ],
                      ),

                      // Size Selection
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Size',
                            style: TextStyle(color: Color(0xffC5C5C5)),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: List.generate(3, (index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedCircle = index;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(2),
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color:
                                        selectedCircle == index
                                            ? Colors.black
                                            : Colors.white,
                                  ),
                                  child: Center(
                                    child: Text(
                                      circleLabels[index],
                                      style: TextStyle(
                                        color:
                                            selectedCircle == index
                                                ? Colors.white
                                                : Color(0xffC5C5C5),
                                        fontSize:
                                            selectedCircle == index ? 16 : 12,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                  Divider(color: Color(0xffF3F3F6)),

                  // Description
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Description',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 11,
                        ),
                      ),
                      Icon(Icons.arrow_downward),
                    ],
                  ),
                  Divider(color: Color(0xffF3F3F6)),
                  RichText(
                    text: TextSpan(
                      text:
                          'Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down. ',
                      style: TextStyle(fontSize: 10.5, color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Read More',
                          style: TextStyle(
                            fontSize: 11,
                            color: Color(0xff508A7B),
                            decoration: TextDecoration.underline,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {},
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),

                  // Reviews Section
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Reviews',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.arrow_downward),
                    ],
                  ),
                  Divider(color: Color(0xffF3F3F6)),
                  Container(
                    height: 200,
                    child: Column(
                      children: [
                        Container(height: 40, child: BaseLine()),
                        Column(
                          children: [
                            RatingNumbers(title: "5", percentage: 0.8),
                            RatingNumbers(title: '4', percentage: 0.12),
                            RatingNumbers(title: "3", percentage: 0.05),
                            RatingNumbers(title: '2', percentage: 0.03),
                            RatingNumbers(title: '1', percentage: 0),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Reviews Footer
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('47 Reviews', style: TextStyle(color: Colors.grey)),
                      Row(
                        children: [
                          Text(
                            'WRITE A REVIEW',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                          Icon(Icons.pin_end, size: 16),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Review Profiles
                  Profile(
                    title: 'Jennifer Rose',
                    image: 'assets/images/g000.png',
                    time: '5m ago',
                    dexcription:
                        'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
                  ),
                  SizedBox(height: 20),
                  Profile(
                    title: 'Kelly Rihana',
                    image: 'assets/images/g000.png',
                    time: '9m ago',
                    dexcription:
                        "I'm very happy with order, It was delivered on and good quality. Recommended!",
                  ),

                  SizedBox(height: 20),

                  // Similar Product
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Similar Product',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.arrow_downward_sharp),
                    ],
                  ),
                  Divider(color: Color(0xffF3F3F6)),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          pageItem(
                            title: "Turtleneck Sweater",
                            price: '\$ 39.99',
                            image: 'assets/images/g00.png',
                          ),
                          pageItem(
                            title: "Turtleneck Sweater",
                            price: '\$ 39.99',
                            image: 'assets/images/sdf.png',
                          ),
                          pageItem(
                            title: "Turtleneck Sweater",
                            price: '\$ 39.99',
                            image: 'assets/images/g000.png',
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
