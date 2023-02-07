import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../routes/app_routes.dart';

class HomeCompleteScreen extends StatefulWidget {
  @override
  State<HomeCompleteScreen> createState() => _HomeCompleteScreenState();
}

class _HomeCompleteScreenState extends State<HomeCompleteScreen> {
  late GoogleMapController mapController;
  late Position _currentPosition;
  late Geolocator _geolocator;
  late StreamSubscription<Position> _positionStream;
  late List<Position> _positionHistory;

  @override
  void initState() {
    super.initState();
    addlatlng();
  }

  void addlatlng() {
    _positionHistory = [];
    _positionStream = Geolocator.getPositionStream(
            locationSettings: const LocationSettings(
                accuracy: LocationAccuracy.high, distanceFilter: 1))
        .listen((Position position) {
      _positionHistory.add(position);
      debugPrint("pos2 $_positionHistory");
    });
  }

  double calculateDistance() {
    double distance = 0;
    debugPrint("pos3 $_positionHistory");
    for (int i = 0; i < _positionHistory.length - 1; i++) {
      distance += Geolocator.distanceBetween(
          _positionHistory[i].latitude,
          _positionHistory[i].longitude,
          _positionHistory[i + 1].latitude,
          _positionHistory[i + 1].longitude);
    }
    return distance;
  }

  @override
  Widget build(BuildContext context) {
    _currentPosition = ModalRoute.of(context)?.settings.arguments as Position;

    return Scaffold(
      body: Stack(children: [
        GoogleMap(
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          zoomControlsEnabled: false,
          initialCameraPosition: CameraPosition(
            target: LatLng(
              _currentPosition != null ? _currentPosition.latitude : 0.0,
              _currentPosition != null ? _currentPosition.longitude : 0.0,
            ),
            zoom: 16,
          ),
          onMapCreated: (GoogleMapController controller) {
            mapController = controller;
          },
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
              onPressed: () {
                var dis = calculateDistance();
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(" Distance Travelled: $dis")));
              },
              child: Text("End Trip ")),
        )
      ]),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _positionStream.cancel();
  }

  onTapHome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rideInfoScreen);
  }
}
