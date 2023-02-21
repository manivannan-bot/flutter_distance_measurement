import 'package:azep/presentation/menu_draweritem/menu_draweritem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../routes/app_routes.dart';

class HomeStartScreen extends StatefulWidget {
  @override
  State<HomeStartScreen> createState() => _HomeStartScreenState();
}

class _HomeStartScreenState extends State<HomeStartScreen> {
  late GoogleMapController mapController;
  Position? _currentPosition;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void _getCurrentLocation() async {
      try {
        bool serviceEnabled;
        LocationPermission permission;

        serviceEnabled = await Geolocator.isLocationServiceEnabled();
        if (!serviceEnabled) {
          Geolocator.openLocationSettings();
          return Future.error('Location services are disabled.');
        }

        permission = await Geolocator.checkPermission();
        if (permission == LocationPermission.denied) {
          permission = await Geolocator.requestPermission();
          if (permission == LocationPermission.denied) {
            return Future.error('Location permissions are denied');
          }
        }

        if (permission == LocationPermission.deniedForever) {
          return Future.error(
              'Location permissions are permanently denied, we cannot request permissions.');
        }

        showDialog(
            context: context,
            builder: (context) {
              return Center(child: CircularProgressIndicator());
            });

        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low,
        );
        debugPrint(" pos: $position");
        _currentPosition = position;

        Navigator.of(context).pop();
      } on PlatformException catch (e) {
        debugPrint("$e");
        _getCurrentLocation();
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("AZEP"),
      ),
      drawer: MenuDraweritem(),
      body: Stack(children: [
        GoogleMap(
          myLocationButtonEnabled: true,
          myLocationEnabled: true,
          initialCameraPosition: CameraPosition(
            target: LatLng(10.97493035817797, 76.96178550395031),
            zoom: 16,
          ),
          onMapCreated: (GoogleMapController controller) {
            mapController = controller;
          },
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            child: const Text("Start Trip"),
            onPressed: () {
              if (_currentPosition != null) {
                onTapNext(context);
                debugPrint("location current position null");
              } else {
                _getCurrentLocation();
              }
            },
          ),
        ),
      ]),
    );
  }

  onTapNext(context) {
    Navigator.pushNamed(context, AppRoutes.homeCompleteScreen,
        arguments: _currentPosition);
  }
}
