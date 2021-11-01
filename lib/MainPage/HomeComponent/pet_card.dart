import 'package:flutter/material.dart';
import 'package:meowgather/MainPage/HomeComponent/pet_list.dart';

class PetCard extends StatelessWidget {
  final PetData petData;
  const PetCard
  ({ Key? key, required this.petData }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 300,
      child: Card(

        clipBehavior: Clip.antiAlias ,
        shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(24) ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Ink.image(image: FileImage(petData.img!),
            height: 300,
            fit: BoxFit.cover,
            child:InkWell(onTap: (){
      
            },
            ),
            ),
            Row(
              children: [
                SizedBox(width: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Text(petData.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                      Text(petData.age.toString(),style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15),),
                      Text(petData.birthday,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 10),),
                      SizedBox(height: 15,)
                  ],
                ),
              ],
            )
            
          ],
        ),
      ),
    );
  }
}