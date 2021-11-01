import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:meowgather/MainPage/ClinicComponent/models/place_search.dart';

class PlaceService{
  Future<List<PlaceSearch>> getAutoComplete(String search) async{
    Uri url = 'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=New&types=%28cities%29&key=AIzaSyAUKFe4JBLR4KShnl9jZgwQQH1ErxSONm8' as Uri;
    var response = await http.get(url);
    var json = convert.jsonDecode(response.body);
    var jsonResults = json['predictions'] as List;
    return jsonResults.map((place) => PlaceSearch.fromJson(place)).toList();
  }
}