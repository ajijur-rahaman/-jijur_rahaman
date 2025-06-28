import 'package:flutter/material.dart';
import 'Search.dart';

class F_Result extends StatefulWidget {
  const F_Result({super.key});
  @override
  State<F_Result> createState() => F_ResultState();
}

class F_ResultState extends State<F_Result> {
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Linen Dress',
      'price': 52.00,
      'oldPrice': 90.00,
      'rating': 4.5,
      'reviews': 64,
      'color': Colors.red,
      'image': 'assets/images/g00.png',
    },
    {
      'name': 'Linen Dress',
      'price': 52.00,
      'oldPrice': 90.00,
      'rating': 4.5,
      'reviews': 64,
      'color': Color(0xffD8D8D8),
      'image': 'assets/images/g000.png',
    },
    {
      'name': 'Linen Dress',
      'price': 52.00,
      'oldPrice': 90.00,
      'rating': 4.5,
      'reviews': 64,
      'color': Colors.red,
      'image': 'assets/images/sdf.png',
    },
    {
      'name': 'Linen Dress',
      'price': 52.00,
      'oldPrice': 90.00,
      'rating': 4.5,
      'reviews': 64,
      'color': Color(0xffD8D8D8),
      'image': 'assets/images/g00.png',
    },
    {
      'name': 'Linen Dress',
      'price': 52.00,
      'oldPrice': 90.00,
      'rating': 4.5,
      'reviews': 64,
      'color': Colors.red,
      'image': 'assets/images/g000.png',
    },
    {
      'name': 'Linen Dress',
      'price': 52.00,
      'oldPrice': 90.00,
      'rating': 4.5,
      'reviews': 64,

      'image': 'assets/images/sdf.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            width: double.infinity,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  color: Colors.white,
                  elevation: 4,
                  child: Container(
                    width: 45,
                    height: 45,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Search()),
                        );
                      },
                      child: Icon(Icons.arrow_back_ios_new),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: 140,
                  width: double.infinity,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 125,
                        height: 140,

                        child: Transform.scale(
                          scaleY: 0.8,
                          child: Text(
                            "FOUND  152  RESU LTS",
                            style: TextStyle(
                              fontSize: 30,
                              letterSpacing: 1.2,

                              height: 1.2,

                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 130,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Color(0xff33302E).withOpacity(0.2),
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Filter',
                                style: TextStyle(color: Color(0xff33302E)),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_drop_down),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                Container(
                  height: 2000,
                  width: double.infinity,
                  child: GridView.builder(
                    itemCount: products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.49,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 30,
                    ),
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return ProductCard(product: product);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final Map<String, dynamic> product;
  const ProductCard({required this.product});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 250,
              width: double.infinity,

              decoration: BoxDecoration(
                color: Color(0xffE7C0A7).withOpacity(0.7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(product['image'], fit: BoxFit.cover),
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
                  child: Icon(Icons.favorite, color: product['color']),
                ),
              ),
            ),
          ],
        ),
        Text(product['name']),
        Row(
          children: [
            Text(
              '\$${product['price'].toStringAsFixed(2)}',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 12),
            Text(
              '\$${product['oldPrice'].toStringAsFixed(2)}',
              style: TextStyle(decoration: TextDecoration.lineThrough),
            ),
          ],
        ),
        Text('*${product['rating']}(${product['reviews']})'),
      ],
    );
  }
}
