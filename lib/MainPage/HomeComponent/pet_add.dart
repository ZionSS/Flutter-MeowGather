// ignore_for_file: deprecated_member_use, duplicate_ignore

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meowgather/MainPage/HomeComponent/pet_list.dart';
import 'package:meowgather/navigation_bar.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:path_provider/path_provider.dart';

class PetAdd extends StatefulWidget {
  const PetAdd({ Key? key }) : super(key: key);

  @override
  _PetAddState createState() => _PetAddState();
}

class _PetAddState extends State<PetAdd> {
  late File? imageFile = null;
  late String name;
  late DateTime? selectedData;
  int ages = 0;
  String _date = "Birth Day";

  late DateTime birthDate ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        const SizedBox(width: double.infinity,),
        Container(
          child: imageFile == null ?
          SizedBox(
            width: 250.0,
            height: 250.0,
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.amber,width: 2.5),),
              alignment: Alignment.center,
              child: Image.asset("assets/Pet/default.jpg",
              width: 300,
              height: 300,
              fit:BoxFit.cover ,),
              ),
          ): SizedBox(
            width: 250.0,
            height: 250.0,
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.amber,width: 2.5)),
              alignment: Alignment.center,
              child: Image.file(imageFile!,
              width: 300,
              height: 300,
              fit:BoxFit.cover ,),
              ),
          )
        ),
        SizedBox(height: 20,),
        Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  Container(
                    decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber, width: 3),
                    color: Colors.white,
                    shape: BoxShape.circle,),
                    child: IconButton(
                      padding: EdgeInsets.all(8),
                      iconSize: 30,
                      icon: Icon(Icons.photo_size_select_actual_outlined,color: Colors.amber[500],),
                      onPressed: () {
                        _getFromGallery();
                      },
                    ),
                  ), 
                  SizedBox(width: 8,),
                  Container(
                    decoration: BoxDecoration(
                      
                    border: Border.all(color: Colors.amber, width: 3),
                    color: Colors.white,
                    shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      padding: EdgeInsets.all(8),
                      iconSize: 30,
                      icon: Icon(Icons.camera_alt_outlined,color: Colors.amber[500],),
                      splashRadius: 1,
                      onPressed: () {
                        _getFromCamera();
                      },
                    ),
                  ), 
                  SizedBox(width: 50,)
              ],
              ),
        Padding(padding: EdgeInsets.symmetric(horizontal :50),
          child: TextField(
              decoration: InputDecoration(
                labelText : "Name",
                floatingLabelStyle: TextStyle(color: Colors.amber[600],fontSize: 25) ,
              ),
              onChanged: (value){
                setState(() {
                  name= value.trim();
                  print(name);
                });
                print(value);
              },
            ),
          ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal : 50),
          child: ElevatedButton(
            child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.date_range,
                                  size: 20.0,
                                  color: Colors.amber[700],
                                ),
                                Text(
                                  " $_date",
                                  style: TextStyle(
                                      color: Colors.amber[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        "  Change",
                        style: TextStyle(
                            color: Colors.amber[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0),
                      ),
                    ],
                  ),
                ),
            onPressed: () {
                  DatePicker.showDatePicker(context,
                      theme: DatePickerTheme(
                        containerHeight: 210.0,
                      ),
                      showTitleActions: true,
                      minTime: DateTime(2000, 1, 1),
                      maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                    print('confirm $date');
                    _date = '${date.year} - ${date.month} - ${date.day}';
                    ages = ageCalculate(date);
                    setState(() {});
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.white) ),
            )
            ,),
        
          SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(onPressed: (){
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => NavigationBar()));
                }, child: Text("BACK",style: TextStyle(color: Colors.amber[900],fontSize: 25,fontWeight: FontWeight.bold),),
                    style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.white70),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0),bottomLeft: Radius.circular(50.0)),
                  side: BorderSide(color: Colors.red)
                  ),),
             )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                width: 150,
                height: 50,
                child: ElevatedButton(onPressed: (){
                   
                    petdata.add(PetData(name: name, birthday: _date, age: ages, img: imageFile));
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => NavigationBar()));
                }, child: Text("ADD",style: TextStyle(color: Colors.amber[900],fontSize: 25,fontWeight: FontWeight.bold),),
                    style: ButtonStyle(backgroundColor:MaterialStateProperty.all(Colors.white70),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(50.0),bottomRight: Radius.circular(50.0)),
                  side: BorderSide(color: Colors.red)
                  ),),
             )
                
                ,),
              ),
            )
          ],
        )
      ],),
    );
  }
   _getFromGallery() async {
    // ignore: deprecated_member_use
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  /// Get from Camera
  _getFromCamera() async {
    // ignore: deprecated_member_use
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  ageCalculate(DateTime birthDate){
      DateTime currentDate = DateTime.now();
      int age = currentDate.year - birthDate.year;
      int month1 = currentDate.month;
      int month2 = birthDate.month;
      if (month2 > month1) {
          age--;
      } else if (month1 == month2) {
        int day1 = currentDate.day;
        int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
  }
    return age;
  }

  Future<File> getImageFileFromAssets(String path) async {
  final byteData = await rootBundle.load('assets/$path');

  final file = File('${(await getTemporaryDirectory()).path}/$path');
  await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

  return file;
}

}
