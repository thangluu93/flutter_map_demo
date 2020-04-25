import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  LatLng _initialPosition = LatLng(10.8865883, 106.7116703);

  GoogleMapController _controller;
  Location _location = Location();
  BitmapDescriptor pinLocationIcon;
  var _marker = <Marker>{};
  // LocationData _currentPosition;

  double lat;
  double lng;
  final databaseReference = FirebaseDatabase.instance.reference();

  @override
  void initState() {
    super.initState();
    setCustomMapPin();
  }

  void setCustomMapPin() async {
    pinLocationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.5),
        'assets/destination_map_marker.png');
  }

  void updateLocation(latitude,longitude) {
    databaseReference.child('user').update(
      {
        "latitude": latitude,
        "longitude": longitude,
      },
    );
  }

  _getLocation(latitude, longitude) {
    lat = latitude;
    lng = longitude;
    updateLocation(latitude, longitude);
  }

  void _onMapCreated(GoogleMapController _cntrl) {
    _controller = _cntrl;
    _location.onLocationChanged().listen(
      (locationChanged) {
        _getLocation(locationChanged.latitude, locationChanged.longitude);
        _controller.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(lat, lng),
              zoom: 15,
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _initialPosition,
              zoom: 20,
            ),
            mapType: MapType.normal,
            onMapCreated: _onMapCreated,
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            zoomGesturesEnabled: true,
            compassEnabled: true,
            markers: _marker,
          ),
        ],
      ),
    );
  }
}
