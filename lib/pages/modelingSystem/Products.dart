import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:learning_ai/pages/modelingSystem/models/product_model.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

var products = [];
bool loading = true;

class _ProductsState extends State<Products> {
  @override
  initState() {
    getProducts();
  }

  void getProducts() async {
    try {
      var productsJson = await rootBundle.loadString(
        'lib/pages/modelingSystem/data/products.json',
      );
      var decodedProducts = jsonDecode(productsJson);
      setState(() {
        products = decodedProducts.map((p) => Product.fromJson(p)).toList();
        loading = false;
      });
      print(products);
    } catch (e) {
      print(e);
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:
          loading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  var product = products[index];
                  return Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.greenAccent,
                    width: double.infinity,
                    height: 200,
                    child: Row(
                      children: [
                        Container(
                          width: 200,
                          child: Image.network(product.imageUrl),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 20),
                                Text(product.description),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
    );
  }
}
