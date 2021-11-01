import 'package:flutter/material.dart';

class CatFarm{
  final String image, title,url;
  final int id;
   CatFarm({
    required this.id,
    required this.image,
    required this.title,
    required this.url
  });
}

List<CatFarm> catfarm =[
   CatFarm(
    id: 1,
    title: "House of Munchkin Cat",
    image: "assets/farm/farm1.jpg",
    url: "https://www.facebook.com/HouseofMunchkinCatThailand/"
  ),

  CatFarm(
    id: 2,
    title: "Cat House By Sarun",
    image: "assets/farm/farm2.jpg",
    url: "https://www.facebook.com/cathousethailand/"
  ),
  CatFarm(
    id: 3,
    title: "Hello Fold Cattery",
    image: "assets/farm/farm3.jpg",
    url: "https://www.facebook.com/hellofold/"
  ),
  CatFarm(
    id: 4,
    title: "AAA.Crazy cat doll",
    image: "assets/farm/farm4.jpg",
    url: "https://www.facebohttps://www.facebook.com/AAACrazy-cat-doll-ขายแมวสก๊อตติสโฟลด์-เปอเซีย-มันช์กิ้น-แมวขาสั้น-1009113679295113/"
  ),
  CatFarm(
    id: 5,
    title: "Catmelody&Juicy Juice",
    image: "assets/farm/farm5.jpg",
    url: "https://www.facebook.com/catmelodycattery/"
  ),
  CatFarm(
    id: 6,
    title: "Numnimo Cattery",
    image: "assets/farm/farm6.jpg",
    url: "https://www.facebook.com/numnimocattery/"
  ),
 
];

