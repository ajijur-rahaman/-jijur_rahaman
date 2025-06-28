import 'package:flutter/material.dart';

class Trail extends StatefulWidget {
  const Trail({super.key});

  @override
  State<Trail> createState() => _TrailState();
}

class _TrailState extends State<Trail> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: Center(
              child: Text(count.toString(), style: TextStyle(fontSize: 30)),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              count++;
              setState(() {});
              print(count);
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////

// class Trail extends StatelessWidget {
//   const Trail({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Home'), backgroundColor: Colors.blue),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.amber,
//                 foregroundColor: Colors.red,
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Activity1()),
//                 );
//               },
//               child: Text('Go To Activety 1'),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: const Color.fromARGB(255, 38, 7, 191),
//                 foregroundColor: const Color.fromARGB(255, 243, 235, 236),
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => Activity2()),
//                 );
//               },
//               child: Text('Go To Activety 2'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Activity1 extends StatelessWidget {
//   const Activity1({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Activity1"), backgroundColor: Colors.blue),
//       body: Center(
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: const Color.fromARGB(255, 38, 7, 191),
//             foregroundColor: const Color.fromARGB(255, 243, 235, 236),
//           ),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Activity2()),
//             );
//           },
//           child: Text('Go To Activety 2'),
//         ),
//       ),
//     );
//   }
// }

// class Activity2 extends StatelessWidget {
//   const Activity2({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Activity2"), backgroundColor: Colors.blue),
//       body: Center(
//         child: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//             backgroundColor: const Color.fromARGB(255, 38, 7, 191),
//             foregroundColor: const Color.fromARGB(255, 243, 235, 236),
//           ),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Activity1()),
//             );
//           },
//           child: Text('Go To Activety 1'),
//         ),
//       ),
//     );
//   }
// }
