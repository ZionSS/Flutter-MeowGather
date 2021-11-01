import 'package:flutter/material.dart';
import 'package:meowgather/MainPage/AdoptComponent/cat_farm.dart';
import 'package:url_launcher/url_launcher.dart';

class FarmCard extends StatelessWidget {
  final CatFarm catFarm;

  const FarmCard({ Key? key, required this.catFarm }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Container(
        decoration: BoxDecoration(border: Border
        (bottom: BorderSide(width: 5,color : Color(0xffffb8c00))
        )
        ),
        child: Column(
          children: [
            Card(

              clipBehavior: Clip.antiAlias ,
              shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(24) ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Ink.image(image: AssetImage(catFarm.image),
                  height: 300,
                  fit: BoxFit.cover,
                  child:InkWell(onTap: ()=>launch(catFarm.url)
                  
                  ),
                  ),
                  
                ],
              ),
            ),
            Text(catFarm.title,style: TextStyle(color: Colors.amber[600],fontSize: 25,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}