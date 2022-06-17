import 'package:flutter/material.dart';

//class of categories in app
class Categories {
  final String image, name;
  final Color color;

  Categories({
    required this.color,
    required this.image,
    required this.name,
  });
}

List<Categories> category = [
  Categories(
    color: Colors.green,
    image: "images/Category/avocado.png",
    name: "Avocado",
  ),
  Categories(
    color: Colors.yellow,
    image: "images/Category/pineapple.png",
    name: "Pineapple",
  ),
  Categories(
    color: Colors.deepPurple,
    image: "images/Category/grapes.png",
    name: "Grapes",
  ),
  Categories(
    color: Colors.red,
    image: "images/Category/apple.png",
    name: "Apple",
  ),
  Categories(
    color: Colors.greenAccent,
    image: "images/Category/green apple.png",
    name: "Green Apple",
  ),
  Categories(
    color: Colors.yellow,
    image: "images/Category/banana.png",
    name: "Banana",
  ),
  Categories(
    color: Colors.orange,
    image: "images/Category/mango.png",
    name: "Mango",
  ),
  Categories(
    color: Colors.redAccent,
    image: "images/Category/strawberry.png",
    name: "Strawberry",
  ),
  Categories(
    color: Colors.deepPurple,
    image: "images/Category/blueberry.png",
    name: "Blueberry",
  ),
  Categories(
    color: Colors.red,
    image: "images/Category/cherries.png",
    name: "Cherries",
  ),
  Categories(
    color: Colors.yellow,
    image: "images/Category/lemons.png",
    name: "Lemons",
  ),
  Categories(
    color: Colors.orange,
    image: "images/Category/orange.png",
    name: "Orange",
  ),
];

//class of most popular products in app
class Popular {
  final String image, name;
  final double price;
  final Color color;

  Popular({
    required this.image,
    required this.name,
    required this.price,
    required this.color,
  });
}

List<Popular> popular = [
  Popular(
    image: "images/Most Popular/Apple_Juice.jpg",
    name: "Apple Juice",
    price: 8.65,
    color: const Color(0xFFF78C94),
  ),
  Popular(
    image: "images/Most Popular/pineapple_Juice.jpg",
    name: "Pineapple Juice",
    price: 9.40,
    color: const Color(0xFFFEC775),
  ),
  Popular(
    image: "images/Most Popular/Grapes Juice.jpg",
    name: "Grapes Juice",
    price: 10.50,
    color: const Color(0xFFEDCFEE),
  ),
  Popular(
    image: "images/Most Popular/grapes_juice.jpg",
    name: "Grapes Juice",
    price: 10.50,
    color: const Color(0xFFEDCFEE),
  ),
  Popular(
    image: "images/Most Popular/mango_juice.jpg",
    name: "Mango Juice",
    price: 12.32,
    color: const Color(0xFFE58A39),
  ),
  Popular(
    image: "images/Most Popular/avocado_juice.jpg",
    name: "Avocado Juice",
    price: 9.50,
    color: const Color(0xFF597204),
  ),
  Popular(
    image: "images/Most Popular/orange_juice.jpg",
    name: "Orange Juice",
    price: 15.52,
    color: const Color(0xFFFF9718),
  ),
  Popular(
    image: "images/Most Popular/strawberry_juice.jpg",
    name: "Strawberry Juice",
    price: 14.22,
    color: const Color(0xFFEFC1B2),
  ),
];

//class of New Drinks in app
class Drinks {
  final String image, name;
  final double price;
  final Color color;

  Drinks({
    required this.image,
    required this.name,
    required this.price,
    required this.color,
  });
}

List<Drinks> drinks = [
  Drinks(
    image: "images/New Drinks/Cherry_juice.jpg",
    name: "Cherry Juice",
    price: 14.22,
    color: const Color(0xFFE95750),
  ),
  Drinks(
    image: "images/New Drinks/orange_juice.jpg",
    name: "Orange Juice",
    price: 14.22,
    color: const Color(0xFFF9C03B),
  ),
  Drinks(
    image: "images/New Drinks/Strawberry_juice.jpg",
    name: "Strawberry Juice",
    price: 14.22,
    color: const Color(0xFFEEA9CB),
  ),
  Drinks(
    image: "images/New Drinks/green_apple_juice.jpg",
    name: "Green Apple Juice",
    price: 14.22,
    color: const Color(0xFF4DB26E),
  ),
  Drinks(
    image: "images/New Drinks/fruits_juice.jpg",
    name: "Fruits Juice",
    price: 14.22,
    color: const Color(0xFFA571A1),
  ),
];

//class of New Drinks in app
class Seller {
  final String image, name;
  final double price;
  final Color color;

  Seller({
    required this.image,
    required this.name,
    required this.price,
    required this.color,
  });
}

List<Seller> seller = [
  Seller(
    image: "images/Best Seller/green_apple_juice.jpeg",
    name: "Green Apple Juice",
    price: 14.22,
    color: const Color(0xFF7FA83F),
  ),
  Seller(
    image: "images/Best Seller/fruit_juice.jpeg",
    name: "Fruit Juice",
    price: 14.22,
    color: const Color(0xFF8B5094),
  ),
  Seller(
    image: "images/Best Seller/strawberry_juice.jpg",
    name: "Strawberry Juice",
    price: 14.22,
    color: const Color(0xFFE95750),
  ),
  Seller(
    image: "images/Best Seller/mango_juice.jpeg",
    name: "Mango Juice",
    price: 14.22,
    color: const Color(0xFFE58129),
  ),
];
