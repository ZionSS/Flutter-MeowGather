import 'package:flutter/material.dart';

class ProductFood{
  final String image, title, description;
  final int price, size, id;
  final Color color;
   ProductFood({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<ProductFood> foodproducts = [
  ProductFood(
      id: 1,
      title: "Whiskas",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/Shop/Food/cat_food1.png",
      color: bgcolor),
  ProductFood(
      id: 2,
      title: "Royal Canin",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/Shop/Food/cat_food2.png",
      color: bgcolor),
  ProductFood(
      id: 3,
      title: "Perfecta",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/Shop/Food/cat_food3.png",
      color: bgcolor),
  ProductFood(
      id: 4,
      title: "Meowmix",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/Shop/Food/cat_food4.png",
      color: bgcolor),
  ProductFood(
      id: 5,
      title: "Hill's",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/Shop/Food/cat_food5.png",
      color: bgcolor),
  ProductFood(
    id: 6,
    title: "Purina One",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/Shop/Food/cat_food6.png",
    color: bgcolor,
  ),
];

Color bgcolor = const Color(0xffffe0b2);
String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
