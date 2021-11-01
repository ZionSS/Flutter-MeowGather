import 'package:flutter/material.dart';
import 'package:meowgather/MainPage/ShopComponent/product_food.dart';


class FoodItemCard extends StatelessWidget {
  final ProductFood foodproducts;
  final Function press;
  const FoodItemCard({
    Key? key, required this.foodproducts, required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){press;},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
               height: 180,
               width: 160,
              decoration: BoxDecoration(
                color: foodproducts.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${foodproducts.id}",
                child: Image.asset(foodproducts.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20 / 4),
            child: Text(
              foodproducts.title,
              style: TextStyle(color: Colors.grey[400]),
            ),
          ),
          Text(
            "\$${foodproducts.price}",
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}