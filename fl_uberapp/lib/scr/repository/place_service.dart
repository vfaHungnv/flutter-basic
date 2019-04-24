import 'dart:async';
import 'package:fl_uberapp/scr/config/config.dart';
import 'package:fl_uberapp/scr/model/place_item_res.dart';
import 'package:fl_uberapp/scr/model/step_res.dart';
import 'package:fl_uberapp/scr/model/trip_info_res.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class PlaceService {
  static Future<List<PlaceItemRes>> searchPlace(String keyword) async {
    String key = Configs.googleKey();
    String language = "language=vi";
    String region = "region=VN";
    String url = Configs.mapURL + "place/textsearch/json?key=" + key + "&" + language + "&" + region + "&query=" + Uri.encodeQueryComponent(keyword);
    print("Search >>: " + url);
    var res = await http.get(url);
    if (res.statusCode == 200) {
      return PlaceItemRes.fromJson(json.decode(res.body));
    } else {
      return new List();
    }
  }

  static Future<dynamic> getStep(double fromLat, double fromLng, double toLat, double toLng) async {
    String origin = "origin=" + fromLat.toString() + "," + fromLng.toString();
    String dest = "destination=" + toLat.toString() + "," + toLng.toString();
    String sensor = "sensor=false";
    String mode = "mode=driving";
    String params = origin + "&" + dest + "&" + sensor + "&" + mode;
    String key = Configs.googleKey();
    String url = Configs.mapURL + "directions/json?key=" + key + "&" + params;
    print("Directions >>: " + url);
    final JsonDecoder _decoder = new JsonDecoder();
    return http.get(url).then((http.Response response) {
      String res = response.body;
      int statusCode = response.statusCode;
      if (statusCode < 200 || statusCode > 400 || json == null) {
        res = "{\"status\":" + statusCode.toString() + ",\"message\":\"error\",\"rseponse\":" + res + "}";
        throw new Exception(res);
      }

      TripInfoRes tripInfoRes;
      try {
        var json = _decoder.convert(res);
        int distance = json["routes"][0]["legs"][0]["distance"]["value"];
        List<StepsRes> steps = _parseSteps(json["routes"][0]["legs"][0]["steps"]);
        tripInfoRes = new TripInfoRes(distance, steps);
      } catch(err) {
        throw new Exception(err);
      }

      return tripInfoRes;
    });
  }

  static List<StepsRes> _parseSteps(final responseBody) {
    var list = responseBody.map<StepsRes>((json) => new StepsRes.fromJson(json)).toList();
    return list;
  }
}