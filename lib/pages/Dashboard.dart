import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

var activeIndex = 0;
int _selectedIndex = 0;

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    List<int> listItem = [0, 1, 2, 4];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Icon(Icons.menu),
          ),
          title: Text(
            "App Name",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              child: Image.asset('assets/images/dp.png', height: 30, width: 30),
            ),
            Padding(padding: EdgeInsets.only(right: 30)),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            height: 1200,

            child: Column(
              children: [
                Container(
                  width: double.infinity,

                  height: 90,

                  child: TabBar(
                    isScrollable: true,
                    onTap:
                        (index) => {
                          setState(() {
                            activeIndex = index;
                          }),
                          print(activeIndex),
                        },

                    tabs: [
                      Tab(
                        icon: Container(
                          width: 60,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color:
                                activeIndex == 0
                                    ? Color(0xff000000)
                                    : Color(0xffF6F6F6),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text('Tab 1'),
                        ),
                      ),
                      Tab(
                        icon: Container(
                          width: 60,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color:
                                activeIndex == 1
                                    ? Color(0xff000000)
                                    : Color(0xffF6F6F6),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text('Tab 2'),
                        ),
                      ),
                      Tab(
                        icon: Container(
                          width: 60,
                          height: 30,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color:
                                activeIndex == 2
                                    ? Color(0xff000000)
                                    : Color(0xffF6F6F6),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Text('Tab 3'),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  width: 1000,

                  child: TabBarView(
                    children: [
                      ScrollConfiguration(
                        behavior: ScrollBehavior(),
                        child: GridView(
                          scrollDirection: Axis.horizontal,
                          physics: const PageScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 10.0,
                                crossAxisCount: 1,
                                childAspectRatio: 1,
                              ),
                          children:
                              listItem
                                  .map(
                                    (title) => Container(
                                      color: Colors.black,
                                      child: Center(child: Text('$title')),
                                    ),
                                  )
                                  .toList(),
                        ),
                      ),
                      Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(height: 10, color: Colors.black),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(height: 10, color: Colors.red),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(height: 10, color: Colors.yellow),
                          ),
                        ],
                      ),
                      GridView.count(
                        scrollDirection: Axis.horizontal,
                        crossAxisCount: 1,
                        padding: EdgeInsets.all(16),
                        childAspectRatio: .6,
                        crossAxisSpacing: 10,

                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 30, top: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffE0E0E0),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(padding: EdgeInsets.only(left: 15)),
                                Text(
                                  "Tittle",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '\$3456.67',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "+20% month over month",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 30, top: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffE0E0E0),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(padding: EdgeInsets.only(left: 15)),
                                Text(
                                  "Tittle",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '\$3456.67',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "+20% month over month",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 30, top: 16),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Color(0xffE0E0E0),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(padding: EdgeInsets.only(left: 15)),
                                Text(
                                  "Tittle",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '\$3456.67',
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "+20% month over month",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 450,
                  width: 800,

                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffE0E0E0), width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tittle',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: 1000,
                        height: 1,
                        color: Color(0xffE0E0E0),
                      ),
                      SizedBox(height: 30),
                      Text('\$50K', style: TextStyle(color: Color(0xff828282))),
                      SizedBox(height: 10),
                      Container(
                        width: 1000,
                        height: 1,
                        color: Color(0xffE0E0E0),
                      ),
                      SizedBox(height: 30),
                      Text('\$45K', style: TextStyle(color: Color(0xff828282))),
                      SizedBox(height: 10),
                      Container(
                        width: 1000,
                        height: 1,
                        color: Color(0xffE0E0E0),
                      ),
                      SizedBox(height: 30),
                      Text('\$40K', style: TextStyle(color: Color(0xff828282))),
                      SizedBox(height: 10),
                      Container(
                        width: 1000,
                        height: 1,
                        color: Color(0xffE0E0E0),
                      ),
                      SizedBox(height: 30),
                      Text('\$35K', style: TextStyle(color: Color(0xff828282))),
                      SizedBox(height: 10),
                      Container(
                        width: 1000,
                        height: 1,
                        color: Color(0xffE0E0E0),
                      ),
                      SizedBox(height: 30),
                      Text('\$30K', style: TextStyle(color: Color(0xff828282))),
                      SizedBox(height: 10),
                      Container(
                        width: 1000,
                        height: 1,
                        color: Color(0xffE0E0E0),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Text(
                              'Nov 23',
                              style: TextStyle(color: Color(0xff828282)),
                            ),
                            SizedBox(width: 28),
                            Text(
                              '24',
                              style: TextStyle(color: Color(0xff828282)),
                            ),
                            SizedBox(width: 28),
                            Text(
                              '26',
                              style: TextStyle(color: Color(0xff828282)),
                            ),
                            SizedBox(width: 28),
                            Text(
                              '27',
                              style: TextStyle(color: Color(0xff828282)),
                            ),
                            SizedBox(width: 28),
                            Text(
                              '28',
                              style: TextStyle(color: Color(0xff828282)),
                            ),
                            SizedBox(width: 28),
                            Text(
                              '29',
                              style: TextStyle(color: Color(0xff828282)),
                            ),
                            SizedBox(width: 28),
                            Text(
                              '30',
                              style: TextStyle(color: Color(0xff828282)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 400,
                  width: 800,

                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffE0E0E0), width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tittle',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                            child: Image.asset(
                              'assets/images/dp.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Helena Hills',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                'Active 11m ago',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff828282),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                            child: Image.asset(
                              'assets/images/dp.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Helena Hills',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                'Active 11m ago',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff828282),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                            child: Image.asset(
                              'assets/images/dp.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Helena Hills',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                'Active 11m ago',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff828282),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                            child: Image.asset(
                              'assets/images/dp.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Helena Hills',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                'Active 11m ago',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff828282),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(
                              Radius.circular(100),
                            ),
                            child: Image.asset(
                              'assets/images/dp.png',
                              height: 30,
                              width: 30,
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Helena Hills',
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                'Active 11m ago',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff828282),
                                ),
                              ),
                            ],
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.green,
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
          ],
        ),
      ),
    );
  }
}
