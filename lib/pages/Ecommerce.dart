import 'package:flutter/material.dart';

class Ecommerce extends StatefulWidget {
  const Ecommerce({super.key});
  @override
  State<Ecommerce> createState() => _EcommerceState();
}

var activeIndex = 0;
int _selectedIndex = 0;

class _EcommerceState extends State<Ecommerce> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(alignment: Alignment.topCenter),
            SizedBox(height: 30),
            Container(
              width: 343,
              height: 40,

              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12, width: 2),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  hintText: 'Search......',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            SizedBox(height: 10),
            SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: 700,
                      height: 50,

                      child: Center(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 140,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(child: Icon(Icons.favorite)),
                                      SizedBox(width: 10),
                                      Container(child: Text('Favourite')),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Container(
                                width: 140,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(child: Icon(Icons.history)),
                                      SizedBox(width: 10),
                                      Container(child: Text('History')),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Container(
                                width: 140,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Icon(
                                          Icons.follow_the_signs_outlined,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Container(child: Text('Following')),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 20),
                              Container(
                                width: 140,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Icon(Icons.file_copy_sharp),
                                      ),
                                      SizedBox(width: 10),
                                      Container(child: Text('Orders')),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Container(
              width: 800,
              height: 200,

              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.only(left: 20),
              width: 800,
              height: 60,

              child: Row(
                children: [
                  Text(
                    'Tittle',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 15),
                  Container(
                    child: CircleAvatar(
                      minRadius: 12,
                      child: Icon(Icons.arrow_forward_ios, size: 12),
                      backgroundColor: Colors.black12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              width: 800,
              height: 150,

              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                              child: Image.asset(
                                'assets/images/dp.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Tittle',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                              child: Image.asset(
                                'assets/images/dp.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Tittle',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                              child: Image.asset(
                                'assets/images/dp.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Tittle',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                              child: Image.asset(
                                'assets/images/dp.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Tittle',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                              child: Image.asset(
                                'assets/images/dp.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Tittle',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          Container(
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                              child: Image.asset(
                                'assets/images/dp.png',
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Tittle',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 800,
              height: 320,

              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        width: 800,
                        height: 80,

                        child: Row(
                          children: [
                            Text(
                              'Tittle',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 15),
                            Container(
                              child: CircleAvatar(
                                minRadius: 12,
                                child: Icon(Icons.arrow_forward_ios, size: 12),
                                backgroundColor: Colors.black12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, top: 20),

                        child: Center(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                        child: Image.asset(
                                          'assets/images/dp.png',
                                          height: 130,
                                          width: 130,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Brand ',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Product name',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '\$10.99',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 30),
                                Column(
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                        child: Image.asset(
                                          'assets/images/dp.png',
                                          height: 130,
                                          width: 130,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Brand ',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Product name',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '\$10.99',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 30),
                                Column(
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                        child: Image.asset(
                                          'assets/images/dp.png',
                                          height: 130,
                                          width: 130,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Brand ',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Product name',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '\$10.99',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 30),
                                Column(
                                  children: [
                                    Container(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8),
                                        ),
                                        child: Image.asset(
                                          'assets/images/dp.png',
                                          height: 130,
                                          width: 130,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Brand ',
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        'Product name',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      child: Text(
                                        '\$10.99',
                                        style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.scanner_outlined),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline),
            label: "Message",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Contact"),
        ],
      ),
    );
  }
}
