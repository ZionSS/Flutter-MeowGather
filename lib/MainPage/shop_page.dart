import 'package:flutter/material.dart';
import 'package:meowgather/MainPage/ShopComponent/shop_body.dart';
import 'package:meowgather/MainPage/home_page.dart';
import 'package:meowgather/navigation_bar.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({ Key? key }) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: ShopBody(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
        backgroundColor: Colors.amber[600],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => NavigationBar()));
          },
          ),
          actions: [
            IconButton(onPressed: (){},
             icon: Icon(Icons.search)),
            IconButton(onPressed: (){},
             icon: Icon(Icons.shopping_cart_outlined)),
          ],
      );
  }
}