import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:meowgather/MainPage/ClinicComponent/geolocator_service.dart';

class ApplicationBloc with ChangeNotifier {
  final geoLocatorService = GeolocatorService();

  late Position currentLocation;

  ApplicationBloc (){
    setcurrentPosition();
  }

  setcurrentPosition() async{
    currentLocation = await geoLocatorService.getCurrentLocation();
    notifyListeners();
  }

}