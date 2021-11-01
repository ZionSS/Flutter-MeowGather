import 'dart:io';

import 'package:flutter/cupertino.dart';

class PetData{
   final File? img; 
   final String name;
   final String birthday;
   final int age;

  PetData({
    required this.img,
    required this.name, 
    required this.birthday, 
    required this.age
    });
}

List<PetData> petdata =[];