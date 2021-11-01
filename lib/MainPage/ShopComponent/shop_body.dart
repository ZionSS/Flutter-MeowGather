import 'package:flutter/material.dart';
import 'package:meowgather/MainPage/ShopComponent/food_detailscreen.dart';
import 'package:meowgather/MainPage/ShopComponent/product_food.dart';
import 'package:meowgather/MainPage/ShopComponent/shop_categories.dart';
import 'package:meowgather/MainPage/ShopComponent/shop_fooditem.dart';

class ShopBody extends StatelessWidget {
  const ShopBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text("CAT SHOP",
            style: TextStyle(fontWeight: FontWeight.bold,
            color: Colors.amber[800],
            fontSize: 30
            ),
            ),
          ),
          ShopCategories(),
          Expanded(child: Padding(padding: 
            const EdgeInsets.symmetric(horizontal : 20),
            child: GridView.builder(
              itemCount: foodproducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing : 20.0,
                crossAxisSpacing: 20.0,
                childAspectRatio: 0.75
              ), 
              itemBuilder: (context,index) => FoodItemCard(foodproducts: foodproducts[index],
                  press: ()=> Navigator.push( context,
                          MaterialPageRoute(
                            builder: (context) =>  FoodDetailScreen(    
                            ),
                  )),
            )
            )
          )
          )
          ],
    );
  }
}
