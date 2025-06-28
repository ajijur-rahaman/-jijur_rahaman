import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  color: Colors.blueAccent,
                  height: 300,
                  width: double.infinity,
                  child: Column(
                    spacing: 5,
                    children: [
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 30),
                          Icon(Icons.currency_pound, size: 30),
                          SizedBox(width: 30),
                          Container(
                            width: 200,
                            child: Flexible(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  hintText: 'wwww',
                                ),
                              ),
                            ),
                          ),

                          SizedBox(width: 30),
                          Icon(Icons.notification_add),
                        ],
                      ),
                      SizedBox(height: 40),
                      Text(
                        'US Dollar',
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                      Text(
                        "\$20,000",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Avaialable Balance",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      OverflowBar(
                        alignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            child: Text('\$ Add Money'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 250, left: 200, right: 200),
                  padding: EdgeInsets.all(20),

                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                  ),
                  child: Row(
                    spacing: 20,
                    children: [
                      SizedBox(width: 10),
                      Icon(Icons.import_contacts),
                      SizedBox(width: 300),
                      Icon(Icons.call),
                      SizedBox(width: 300),
                      Icon(Icons.messenger_outline),
                    ],
                  ),
                ),
              ],
            ),

            //   Transaction Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Transaction',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),
                Icon(Icons.arrow_circle_down),
              ],
            ),

            //   Transaction List
            Container(
              height: 500,
              margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(33),
              ),
              child: ListView.builder(
                itemCount: transactions.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: transactions[index]['color'] as Color,
                    height: 80,

                    padding: EdgeInsets.symmetric(horizontal: 20),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(
                          children: [
                            Icon(transactions[index]['Icon'] as IconData),
                            SizedBox(width: 5),
                            Text(transactions[index]['text'] as String),
                          ],
                        ),
                        Text(transactions[index]['value'] as String),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
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
    );
  }
}

var transactions = [
  {
    "text": "Spending",
    "value": '-\$500',
    "color": Colors.red,
    "Divider": "true",
    "Icon": Icons.money,
  },
  {
    "text": "Income",
    "value": '+\$2200',
    "color": Colors.green,
    "Divider": "true",
    "Icon": Icons.margin_sharp,
  },
  {
    "text": "Savings",
    "value": '+\$500',
    "color": Colors.yellow,
    "Divider": "true",
    "Icon": Icons.account_balance,
  },
  {
    "text": "ds",
    "value": '+\$500',
    "color": Colors.amber,
    "Divider": "true",
    "Icon": Icons.add_alarm_outlined,
  },
  {
    "text": "ds",
    "value": '+\$500',
    "color": Colors.deepPurpleAccent,
    "Divider": "true",
    "Icon": Icons.add_circle_outlined,
  },
];
