import 'dart:async';
import 'package:fl_uberapp/scr/config/configs.dart';
import 'package:fl_uberapp/scr/model/place_item_res.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PlaceService {
  static Future<List<PlaceItemRes>> searchPlace(String keyword) async {
    String url = "https://maps.googleapis.com/maps/api/place/textsearch/json?key=" + 
    "AIzaSyBvLSBjP3yOW7r6ECwH2PawinhZ335qWCo" +  
    "&language=vi&region=VN&query=" + 
    Uri.encodeQueryComponent(keyword);
    print("Search >>: " + url);
    var res = await http.get(url);
    if (res.statusCode == 200) {
      return PlaceItemRes.fromJson(json.decode(res.body));
    } else {
      return new List();
    }
  }
}