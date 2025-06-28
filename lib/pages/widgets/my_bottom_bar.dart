import 'package:flutter/material.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int selectedIndex = 0;
  List<Widget> _itemList = [
    Center(
      child: Container(
        padding: EdgeInsets.only(left: 49, top: 40),
        height: 400,
        width: 400,
        color: Colors.amber,
        child: Text('Home', style: TextStyle(fontSize: 40)),
      ),
    ),
    Center(child: Container(height: 400, width: 400, color: Colors.red)),
    Center(child: Container(height: 400, width: 400, color: Colors.lightBlue)),
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
    print(selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Demo')),
      body: _itemList[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Bussiness',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'School'),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//         selectedItemColor: Colors.amber,
//         unselectedItemColor: Colors.green,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.scanner_outlined),
//             label: 'Scan',
//           ),

//           BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Home'),
//         ],
//       ),
//     );
//   }
// }
