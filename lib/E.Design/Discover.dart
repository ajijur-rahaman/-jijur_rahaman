import 'package:flutter/material.dart';

class Discover extends StatefulWidget {
  const Discover({super.key});
  @override
  State<Discover> createState() => DiscoverState();
}

class DiscoverState extends State<Discover> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Discover',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: Icon(Icons.menu_rounded),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_active),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            width: double.infinity,

            child: Column(
              children: [
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
                SizedBox(height: 20),
                CustomBox(
                  boxColor: Color(0xffA3A798),
                  circleColor: Color(0xffE2E2E2),
                  imageUrl: "images/g000.png",
                ),

                SizedBox(height: 20),
                CustomBox(
                  boxColor: Color(0xff898280),
                  circleColor: Color(0xff9C9492),
                  imageUrl: "images/g00.png",
                ),

                SizedBox(height: 20),
                CustomBox(
                  boxColor: Color(0xff44565C),
                  circleColor: Color(0xff5B7178),
                  imageUrl: "images/sdf.png",
                ),

                SizedBox(height: 20),
                CustomBox(
                  boxColor: Color(0xffB9AEB2),
                  circleColor: Color(0xffD6CFD2),
                  imageUrl: "images/sdf.png",
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[300],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock_outlined),
            label: "Lock",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: "People",
          ),
        ],
      ),
    );
  }
}

///////Different Color in Every Container///
class CustomBox extends StatelessWidget {
  final Color boxColor;
  final Color circleColor;
  final String imageUrl;

  const CustomBox({
    required this.boxColor,
    required this.circleColor,
    required this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 126,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: boxColor,
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: circleColor.withOpacity(0.5),

                  child: CircleAvatar(radius: 30, backgroundColor: circleColor),
                ),
              ),
            ),
          ),
          Positioned(
            child: Container(
              width: 80,
              height: 126,
              child: Image.asset(imageUrl),
            ),
            right: 0,
            left: 200,
          ),
        ],
      ),
    );
  }
}
