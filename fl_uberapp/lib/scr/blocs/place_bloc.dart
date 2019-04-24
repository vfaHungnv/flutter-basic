import 'dart:async';
import 'package:fl_uberapp/scr/repository/place_service.dart';

class PlaceBloc {
  var _placeController = StreamController();
  Stream get placeStream => _placeController.stream;

  void searchPlace(String keyword) {
    print("Place bloc search: " + keyword);

    _placeController.sink.add("start");
    PlaceService.searchPlace(keyword).then((rs) {
      _placeController.sink.add(rs);
    }).catchError((err) {
    });
  }

  void dispose() {
    _placeController.close();
  }
}