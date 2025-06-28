class Product {
  String id;
  double price;
  String name;
  String description;
  String imageUrl;

  Product({
    required this.id,
    required this.price,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  factory Product.fromJson(jsonProduct) {
    return Product(
      id: jsonProduct?['id'] ?? '',
      price: jsonProduct['salePrice'],
      name: jsonProduct['name'],
      description: jsonProduct['shortDescription'],
      imageUrl: jsonProduct['image'],
    );
  }
}
