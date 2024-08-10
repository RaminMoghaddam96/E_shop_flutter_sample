import 'package:flutter/material.dart';

class Category {
  String name;
  String image;
  Color background;
  List<String> subcategories;

  Category({
    required this.background,
    required this.name,
    required this.image,
    required this.subcategories,
  });
}

List<Category> categories = [
  Category(
    name: 'Electronics',
    image: 'assets/categories/electronics.jpeg',
    background: Colors.grey,
    subcategories: [
      'Electronics',
      'Accessories',
      'Mobile',
      'Digital',
      'Home',
      'Watches'
    ],
  ),
  Category(
    name: 'Drinks',
    image: 'assets/categories/drinks.jpg',
    background: Colors.blue,
    subcategories: ['Drinks', 'Groceries'],
  ),
  Category(
    name: 'Home',
    image: 'assets/categories/home.jpg',
    background: Colors.purple,
    subcategories: ['Home', 'Furniture', 'Decor', 'Lighting'],
  ),
  Category(
    name: 'Footwear',
    image: 'assets/categories/shoes.webp',
    background: Colors.blueGrey,
    subcategories: ['Footwear', 'Men\'s Fashion', 'Women\'s Fashion'],
  ),
];
