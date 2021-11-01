
import 'package:flutter/material.dart';

class ShopCategories extends StatefulWidget {
  const ShopCategories({Key? key}) : super(key: key);


  @override
  _ShopCategoriesState createState() => _ShopCategoriesState();
}

class _ShopCategoriesState extends State<ShopCategories> {
  List<String> categories =["Food","Toy","Gadget","Costume","Accessories",];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
          height: 25,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context,index) => buildCategories(index)
            
            ),
      ),
    );
  }

  Widget buildCategories(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal : 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color:selectedIndex == index ? Colors.amber[800] : Colors.grey
    
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5),
              height: 2,
              width: 30,
              color: selectedIndex == index ? Colors.amber[600] : Colors.transparent,
              ),
          ],
        ),
      ),
    );
  }
}