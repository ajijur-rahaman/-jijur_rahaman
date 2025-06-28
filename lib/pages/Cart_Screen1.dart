import 'package:flutter/material.dart';

class ListViewValueExample extends StatefulWidget {
  const ListViewValueExample({super.key});
  @override
  _ListViewValueExampleState createState() => _ListViewValueExampleState();
}

class _ListViewValueExampleState extends State<ListViewValueExample> {
  int _count = 0;
  int? _currentValue;      //Nullable int.Er man null/songka hte pare
  String _currentLabel = ''; 
  List<Map<String, dynamic>> _valueListAdded = [];

  final List<Map<String, dynamic>> valueList = [
    {'value': 200, 'label': 'Apple'},
    {'value': 150, 'label': 'Banana'},
    {'value': 800, 'label': 'Cherry'},
    {'value': 75, 'label': 'Date'},
    {'value': 1000, 'label': 'Elderberry'},
    {'value': 900, 'label': 'Mango'},
  ];

  void _increment() {
    setState(() {
      if (_count < valueList.length) {
        _currentValue = valueList[_count]['value'];
        _currentLabel = valueList[_count]['label'];
        _valueListAdded.add({'value': _currentValue, 'label': _currentLabel});
        _count++;
      }
    });
  }

  void _decrement() {
    setState(() {
      if (_count > 0) {
        _count--;
        _valueListAdded.removeLast();
        if (_count > 0) {
          _currentValue = valueList[_count - 1]['value'];
          _currentLabel = valueList[_count - 1]['label'];
        } else {
          _currentValue = null;
          _currentLabel = '';
        }
      }
    });
  }

  int get totalSum =>
      _valueListAdded.fold(0, (sum, item) => sum + (item['value'] as int));
  //fold-- akti loop er mto kaj kre.0 teke suru kre pottekti item teke 'value' ber kre ager sum er sate + kre//
  //(item['value']as int--List teke "value" er man ke int convert kre//
  Widget buildOutlinedButton({
    required Widget child,
    required VoidCallback? onPressed,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.blue)),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Label + Value List')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),

            // Counter + Buttons Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      buildOutlinedButton(
                        child: Icon(Icons.remove),
                        onPressed: _decrement,
                      ),
                      SizedBox(width: 10),
                      buildOutlinedButton(
                        child: Text('$_count', style: TextStyle(fontSize: 18)),
                        onPressed: null,
                      ),
                      SizedBox(width: 10),
                      buildOutlinedButton(
                        child: Icon(Icons.add),
                        onPressed: _increment,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            Text(
              _currentValue != null
                  ? 'Current: $_currentLabel ($_currentValue)'
                  : 'No value selected',
              style: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 20),
            Text(
              'Selected Product & Prices:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),

            // Expanded ListView
            Container(
              width: 300,
              height: 400,
              color: Colors.amber,
              child: Column(
                children: [
                  Container(
                    child: Expanded(
                      child: ListView.builder(
                        itemCount: _valueListAdded.length,
                        itemBuilder: (context, index) {
                          final item = _valueListAdded[index];
                          return ListTile(
                            leading: Text('${index + 1}'),
                            title: Text('${item['label']}'),
                            trailing: Text('${item['value']}'),
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
                      'Total: $totalSum',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
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
