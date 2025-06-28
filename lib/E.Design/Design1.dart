import 'package:flutter/material.dart';

class Design1 extends StatefulWidget {
  const Design1({super.key});

  @override
  State<Design1> createState() => _Design1State();
}

class _Design1State extends State<Design1> {
  final PageController _controller = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> pages = [
    {
      'title': 'Discover something new',
      'description': 'Special new arrivals just for you',
      'image': 'assets/images/dp4.jpg',
    },
    {
      'title': 'Update trendy outfit',
      'description': 'Favorite brands and hottest trends',
      'image': 'assets/images/dp5.jpg',
    },
    {
      'title': 'Explore your true style',
      'description': 'Relax and let us bring the style to you',
      'image': 'assets/images/dp4.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 351,
                width: double.infinity,
                color: Color(0xff464447),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Container(
                  height: 800,
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      Container(
                        height: 500,
                        child: PageView.builder(
                          controller: _controller,
                          itemCount: pages.length,
                          onPageChanged: (index) {
                            setState(() {
                              _currentPage = index;
                            });
                          },
                          itemBuilder: (context, index) {
                            return pageItem(
                              title: pages[index]['title']!,
                              description: pages[index]['description']!,
                              image: pages[index]['image']!,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(pages.length, (index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            width: _currentPage == index ? 10 : 6,
                            height: _currentPage == index ? 10 : 6,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color:
                                    _currentPage == index
                                        ? Colors.white
                                        : Colors.grey,
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: 210,
                        height: 53,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            side: BorderSide(width: 1.5, color: Colors.white),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Shopping now',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
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
    );
  }
}

class pageItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  const pageItem({
    required this.title,
    required this.description,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Container(
              height: 400,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffE7E8E9),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(image, fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
