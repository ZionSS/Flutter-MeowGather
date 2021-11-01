import 'package:flutter/material.dart';
import 'package:meowgather/MainPage/HomeComponent/pet_add.dart';
import 'package:meowgather/MainPage/HomeComponent/pet_card.dart';
import 'package:meowgather/MainPage/HomeComponent/pet_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List pet = [];
  int currentIndex= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
        Expanded(child: Padding(
          padding: const EdgeInsets.symmetric(horizontal : 20),
          child: ListView.builder(
              itemCount: petdata.length,
              
              
              itemBuilder: (context,index) => PetCard(petData: petdata[index],
                  )),
            )
            ),
        SizedBox(width: double.infinity,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: 50,
            width: 500,
            child: ElevatedButton.icon(onPressed: (){
                 Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => PetAdd()));
            }, 
            icon: Icon(Icons.add_circle_outline_sharp,color: Colors.amber[900],size: 30,), 
            label: Text("ADD PET",style: TextStyle(color: Colors.amber[900],fontSize: 25,fontWeight: FontWeight.bold),),
            style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.white70),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.red)

                  ),
              ),
             )
            ),
          ),
        )
        ]
      )
    );
  }
  ListView buildPetView(){
    return ListView(
      
    );
  }
}