import 'package:flutter/material.dart';
import 'package:meowgather/MainPage/AdoptComponent/cat_bodyfarm.dart';
import 'package:meowgather/MainPage/AdoptComponent/cat_farm.dart';

class AdoptPage extends StatefulWidget {
  const AdoptPage({ Key? key }) : super(key: key);

  @override
  _AdoptPageState createState() => _AdoptPageState();
}

class _AdoptPageState extends State<AdoptPage> {
  late final CatFarm catFarm;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(child: Padding(padding: const EdgeInsets.symmetric(horizontal : 20),
        child: ListView.builder(
          
          itemCount: catfarm.length,
              itemBuilder: (context,index) => FarmCard(catFarm: catfarm[index])
          ,)
        ,))
      ],),
      
    );
  }
}