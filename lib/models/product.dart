import 'dart:convert';

class Product {
  const Product({
    required this.title,
    required this.description,
    required this.price,
    required this.amount,
    required this.category,
    required this.imageURL,
    required this.id,
    required this.rating,
  });

  final int id;
  final String title;
  final String imageURL;
  final int category;
  final double rating;
  final double amount;
  final double price;
  final String description;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'imageURL': imageURL,
      'category': category,
      'rating': rating,
      'amount': amount,
      'price': price,
      'description': description,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      imageURL: map['imageURL'] ?? '',
      category: map['category']?.toInt() ?? 0,
      rating: map['rating']?.toDouble() ?? 0.0,
      amount: map['amount']?.toDouble() ?? 0.0,
      price: map['price']?.toDouble() ?? 0.0,
      description: map['description'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, name: $title, image: $imageURL, category: $category, rating: $rating, amount: $amount, price: $price, description: $description)';
  }
}
