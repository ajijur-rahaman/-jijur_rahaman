import 'package:flutter/material.dart';

class E_only extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List<String> labels = ['Home', 'Profile', 'Setting', 'Logout'];
    return Scaffold(
      // body: Column(
      //   children: List.generate(labels.length, (index) {
      //     return Container(
      //       height: 50,
      //       width: 200,
      //       child: Padding(
      //         padding: const EdgeInsets.only(bottom: 5),
      //         child: TextField(
      //           decoration: InputDecoration(
      //             hintText: labels[index],
      //             hintStyle: TextStyle(fontSize: 12),

      //             border: UnderlineInputBorder(
      //               borderSide: BorderSide(width: 0.5, color: Colors.grey),
      //             ),
      //           ),
      //         ),
      //       ),
      //     );
      //   }),
      // ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.62,
        children: [
          // Container(color: Colors.amber),
          // Container(color: Colors.red),
          // Container(color: Colors.blue),
          // Container(color: Colors.green),
          // Container(color: Colors.amber),
          // Container(color: Colors.red),
          // Container(color: Colors.blue),
          // Container(color: Colors.green),
          // Container(color: Colors.amber),
          // Container(color: Colors.red),
          // Container(color: Colors.blue),
          // Container(color: Colors.green),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 220,
                    width: double.infinity,

                    decoration: BoxDecoration(
                      color: Color(0xffE7C0A7).withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/sdf.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      color: Colors.white,
                      elevation: 4,
                      child: Container(
                        width: 45,
                        height: 45,
                        child: Icon(Icons.favorite, color: Colors.red),
                      ),
                    ),
                  ),
                ],
              ),
              Text('Maxi Dress'),
              Row(
                children: [
                  Text(
                    '\$ 68.00',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 12),
                  Text(
                    "\$ 90.00",
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              Text('***** (46)'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 220,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Color(0xffE7C0A7).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/images/sdf.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Text('Maxi Dress'),
              Row(
                children: [
                  Text(
                    '\$ 68.00',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 12),
                  Text(
                    "\$ 90.00",
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              Text('***** (46)'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 220,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Color(0xffE7C0A7).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/images/sdf.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Text('Maxi Dress'),
              Row(
                children: [
                  Text(
                    '\$ 68.00',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 12),
                  Text(
                    "\$ 90.00",
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              Text('***** (46)'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 220,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Color(0xffE7C0A7).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/images/sdf.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Text('Maxi Dress'),
              Row(
                children: [
                  Text(
                    '\$ 68.00',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 12),
                  Text(
                    "\$ 90.00",
                    style: TextStyle(decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
              Text('***** (46)'),
            ],
          ),
        ],
      ),
    );
  }
}
