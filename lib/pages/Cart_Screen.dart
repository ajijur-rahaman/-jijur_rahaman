import 'package:flutter/material.dart';

class Cart_Screen extends StatefulWidget {
  Cart_Screen({super.key});

  @override
  State<Cart_Screen> createState() => Cart_ScreenState();
}

class Cart_ScreenState extends State<Cart_Screen> {
  int _count1 = 0;

  int? _currentValue1;

  String _currentLabel1 = '';
  List<Map<String, dynamic>> _valueListAdded = [];
  final List<Map<String, dynamic>> valueList = [
    {"value": 200, 'label': 'Leg'},
    {'value': 300, 'label': 'Body'},
    {'value': 400, 'label': 'Head'},
    {'value': 500, 'label': 'Koliza'},
    {'value': 600, 'label': 'Heart'},
  ];

  void increment1() {
    setState(() {
      if (_count1 < valueList.length) {
        _currentValue1 = valueList[_count1]["value"];
        _currentLabel1 = valueList[_count1]['label'];
        _valueListAdded.add({'value': _currentValue1, 'label': _currentLabel1});
        _count1++;
      }
    });
  }

  void decrement1() {
    setState(() {
      if (_count1 > 0) {
        _count1--;
        _valueListAdded.removeLast();
        if (_count1 > 0) {
          _currentValue1 = valueList[_count1 - 1]['value'];
          _currentLabel1 = valueList[_count1 - 1]['label'];
        } else {
          _currentValue1 = null;
          _currentLabel1 = '';
        }
      }
    });
  }

  void _clearAll() {
    setState(() {
      _count1 = 0;
      _currentValue1 = null;
      _currentLabel1 = '';
      _valueListAdded.clear();
    });
  }

  int get totalsum =>
      _valueListAdded.fold(0, (sum, item) => sum + (item['value'] as int));
  Widget buildOutlinedButton({
    required Widget child,
    required VoidCallback? onPressed,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),

        side: BorderSide(color: Colors.red.shade400),
      ),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Grocery Mart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        foregroundColor: Colors.red.shade400,
        leading: Padding(
          padding: EdgeInsets.only(left: 12, top: 4, bottom: 4, right: 1),
          child: CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/dp.png'),
          ),
        ),

        backgroundColor: Colors.red.shade100,
        toolbarHeight: 70,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                height: 120,
                width: double.infinity,

                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red.shade400),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red.shade50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      'https://scontent.fcgp27-1.fna.fbcdn.net/v/t39.30808-6/467846231_8696783947105749_4392796007910259771_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGAUaYmOtlokXMVS_ZlGQRhCIQS9hVP9QsIhBL2FU_1C-cFqZp4w5PFP5DtSz4XjNZZfwRqXYXr4LtkufY1bvd4&_nc_ohc=nVqboxg_SpwQ7kNvwGFOPZb&_nc_oc=AdkpLdFnlSXtDXpH3x4JqRrY8UZ2WJjnkyzY8Iv3cog6SkA7TAHXMV08toMSEmd6eVob0xXVR0vgJ-yqMQVbiQlS&_nc_zt=23&_nc_ht=scontent.fcgp27-1.fna&_nc_gid=yaUVg_o80YZUTFBx1sRr7Q&oh=00_AfJ9Z6m6xb8O_0oDACSfnhLzG-P17r3H_vAkCrQhvyJZeA&oe=682B92D8',
                      height: 80,
                      width: 100,
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fresh Chicken Only ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Row(
                            children: [
                              buildOutlinedButton(
                                child: Icon(Icons.remove),
                                onPressed: decrement1,
                              ),
                              buildOutlinedButton(
                                child: Text('$_count1'),
                                onPressed: null,
                              ),
                              buildOutlinedButton(
                                child: Icon(Icons.add),
                                onPressed: increment1,
                              ),

                              SizedBox(width: 10),
                              SizedBox(
                                child: Text(
                                  '\$500',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  _currentValue1 != null
                      ? 'Current- $_currentLabel1 :$_currentValue1 Tk'
                      : 'No value selected',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                child: Container(
                  width: 300,
                  height: 400,
                  color: Colors.teal.shade50,
                  child: Column(
                    children: [
                      Container(
                        child: Expanded(
                          child: ListView.builder(
                            itemCount: _valueListAdded.length,
                            itemBuilder: (context, index) {
                              final item = _valueListAdded[index];
                              return ListTile(
                                leading: Text(
                                  '${index + 1}',
                                  style: TextStyle(fontSize: 18),
                                ),
                                title: Text(
                                  '${item['label']}',
                                  style: TextStyle(fontSize: 18),
                                ),
                                trailing: Text(
                                  '${item['value']}',
                                  style: TextStyle(fontSize: 18),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Divider(color: Colors.black, thickness: 1),
                      // Total Sum
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          'Total: $totalsum Tk',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: _clearAll,
                        child: Text('Clear'),
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
