import 'package:flutter/material.dart';
import 'Discover.dart';

class H_PageFull extends StatefulWidget {
  const H_PageFull({super.key});
  @override
  State<H_PageFull> createState() => H_PageFullState();
}

var activeIndex = 0;
int _selectedIndex = 0;

class H_PageFullState extends State<H_PageFull> {
  // final PageController _controller = PageController();
  // int currentPage = 0;
  // final List<Map<String, String>> pages = [
  //   {
  //     'title': 'Turtleneck Sweater',
  //     'price': '\$ 39.99',
  //     'image': 'assets/images/dp4.jpg',
  //   },
  //   {
  //     'title': 'ULong Sleeve Dress',
  //     'price': '\$ 45.00',
  //     'image': 'assets/images/dp5.jpg',
  //   },
  //   {
  //     'title': 'Sportwear Set',
  //     'price': '\$ 39.99',
  //     'image': 'assets/images/dp4.jpg',
  //   },
  //   {
  //     'title': 'ULong Sleeve Dress',
  //     'price': '\$ 45.00',
  //     'image': 'assets/images/dp5.jpg',
  //   },
  // ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'GemStore',
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
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            height: 70,
                            width: double.infinity,

                            child: Align(
                              alignment: Alignment.center,
                              child: TabBar(
                                onTap:
                                    (index) => {
                                      setState(() {
                                        activeIndex = index;
                                      }),
                                    },
                                tabs: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        activeIndex == 0
                                            ? Colors.black
                                            : Color(0xffF2F2F2),
                                    child: Icon(
                                      Icons.vertical_align_bottom_outlined,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        activeIndex == 1
                                            ? Colors.black
                                            : Color(0xffF2F2F2),
                                    child: Icon(
                                      Icons.vertical_align_top,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        activeIndex == 2
                                            ? Colors.black
                                            : Color(0xffF2F2F2),
                                    child: Icon(
                                      Icons.vertical_align_top,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundColor:
                                        activeIndex == 3
                                            ? Colors.black
                                            : Color(0xffF2F2F2),
                                    child: Icon(
                                      Icons.vertical_align_top,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Container(
                            height: 200,

                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                'assets/images/women.jpg',
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Feature Products',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Show all',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff9B9B9B),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.center,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  pageItem(
                                    title: "Turtleneck Sweater",
                                    price: '\$ 39.99',
                                    image: 'assets/images/dp4.jpg',
                                  ),
                                  pageItem(
                                    title: "Turtleneck Sweater",
                                    price: '\$ 39.99',
                                    image: 'assets/images/dp4.jpg',
                                  ),
                                  pageItem(
                                    title: "Turtleneck Sweater",
                                    price: '\$ 39.99',
                                    image: 'assets/images/dp4.jpg',
                                  ),
                                  pageItem(
                                    title: "Turtleneck Sweater",
                                    price: '\$ 39.99',
                                    image: 'assets/images/dp4.jpg',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  height: 160,
                  width: double.infinity,
                  color: Color(0xffF8F8FA),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 45),
                          child: Container(
                            height: 91,
                            width: 165,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'I NEW COLLECTION',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff43484B),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'HANG OUT & PARTY',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xff43484B),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                            child: CircleAvatar(
                              radius: 60,
                              backgroundColor: Color(
                                0xffE2E2E2,
                              ).withOpacity(0.5),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundColor: Color(0xffE2E2E2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Container(
                    width: double.infinity,

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Recommended',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xff000000),
                              ),
                            ),
                            Text(
                              'Show all',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff9B9B9B),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              BoxItem(
                                title: 'White fashion hoodie',
                                price: '\$ 29.00',
                              ),
                              BoxItem(
                                title: 'Cotton T-shirt',
                                price: '\$ 30.00',
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Top Collection',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000000),
                              ),
                            ),
                            Text(
                              'Show all',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color(0xff9B9B9B),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          height: 141,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF8F8FA),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sale up to 40%',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff777E90),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'FOR SLIM',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff777E90),
                                    ),
                                  ),
                                  Text(
                                    '& BEAUTY',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff777E90),
                                    ),
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 60,
                                backgroundColor: Color(0xffE2E2E2),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          padding: EdgeInsets.all(20),
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xffF8F8FA),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Summer Collection 2021',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff777E90),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    'Most sexy ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '& fabulous',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    'design',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                radius: 70,
                                backgroundColor: Color(
                                  0xffE2E2E2,
                                ).withOpacity(0.3),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 220,
                          width: double.infinity,

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffF8F8FA),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 30,
                                    left: 100,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'T-Shirts',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      SizedBox(height: 10),
                                      Text('The'),
                                      Text('Office'),
                                      Text('Life'),
                                    ],
                                  ),
                                ),
                              ),

                              Container(
                                height: 200,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xffF8F8FA),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 30,
                                    left: 5,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'T-Shirts',
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      SizedBox(height: 10),
                                      Text('The'),
                                      Text('Office'),
                                      Text('Life'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Discover()),
              );
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
      ),
    );
  }
}

class pageItem extends StatelessWidget {
  final String title;
  final String price;
  final String image;
  const pageItem({
    required this.title,
    required this.price,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(right: 15),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffE7E8E9),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(image, fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 5),
              Text(
                title,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                price,
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BoxItem extends StatelessWidget {
  final String title;
  final String price;
  const BoxItem({required this.title, required this.price, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Container(
        width: 220,
        height: 80,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xffF9F9F9),
        ),
        child: Row(
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffE2E2E2).withOpacity(0.5),
              ),
            ),
            SizedBox(width: 10),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
