import 'dart:ui';

import 'package:flutter/material.dart';
import 'Discover.dart';
import 'H_PageFull.dart';

class Search extends StatefulWidget {
  const Search({super.key});
  @override
  State<Search> createState() => SearchState();
}

class SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                color: Colors.white,
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
                        MaterialPageRoute(builder: (context) => Discover()),
                      );
                    },
                    child: Icon(Icons.arrow_back_ios_new),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 280,
                      height: 45,
                      decoration: BoxDecoration(
                        color: Color(0xffFAFAFA),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: TextStyle(fontSize: 17),
                          contentPadding: EdgeInsets.only(
                            left: 15,
                            bottom: 11,
                            top: 11,
                            right: 15,
                          ),
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xffFAFAFA),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1),
                          ),
                        ],
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.filter_b_and_w),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Searches',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff33302E).withOpacity(0.5),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.delete_outlined),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBox(boxWidth: 180, boxHeight: 40, title: 'Sunglass'),
                  CustomBox(boxWidth: 140, boxHeight: 40, title: "Sweater"),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomBox(boxWidth: 140, boxHeight: 40, title: 'Hoodie'),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular this week',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Show all',
                    style: TextStyle(fontSize: 10, color: Color(0xff9B9B9B)),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      pageItem(
                        title: "Lihua Tunic White",
                        price: '\$ 53.00',
                        image: 'images/g00.png',
                      ),
                      SizedBox(width: 20),
                      pageItem(
                        title: "Skirt Dress",
                        price: '\$ 34.00',
                        image: 'assets/images/g000.png',
                      ),
                      SizedBox(width: 20),
                      pageItem(
                        title: "Kimi Green Dress",
                        price: '\$ 47.99',
                        image: 'assets/images/sdf.png',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBox extends StatelessWidget {
  final double boxWidth;
  final double boxHeight;
  final String title;
  const CustomBox({
    required this.boxWidth,
    required this.boxHeight,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: boxWidth,
      height: boxHeight,

      decoration: BoxDecoration(
        color: Color(0xffFAFAFA),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff33302E).withOpacity(0.5),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
        ],
      ),
    );
  }
}
