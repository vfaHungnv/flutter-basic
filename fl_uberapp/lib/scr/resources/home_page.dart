import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:fl_uberapp/scr/resources/widgets/ride_picker.dart';
import 'package:fl_uberapp/scr/resources/widgets/home_menu.dart';
import 'package:fl_uberapp/scr/model/place_item_res.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _scaffoldKey = new GlobalKey<ScaffoldState>();
  final Map<String, Marker> _markers = <String, Marker>{};

  GoogleMapController _mapController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: (GoogleMapController controller) {
                _mapController = controller;
              },
              initialCameraPosition: CameraPosition(
                target: LatLng(10.7915178, 106.7271422),
                zoom: 14.4746,
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: Column(
                children: <Widget>[
                  AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0.0,
                    title: Text(
                      "User App",
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: FlatButton(
                      onPressed: () {
                        print("Click menu");
                        // Scaffold.of(context).openDrawer();
                        _scaffoldKey.currentState.openDrawer();
                      },
                      child: Image.asset("ic_menu.png"),
                    ),
                    actions: <Widget>[Image.asset("ic_notify.png")],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: RidePicker(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: HomeMenu(),
      ),
    );
  }

  void onPlaceSelected(PlaceItemRes place, bool fromAddress) {
    var mkId = fromAddress ? "from_address" : "to_address";
    
  }

  void _addMarker(String mkId, PlaceItemRes place) async {
    
  }
}