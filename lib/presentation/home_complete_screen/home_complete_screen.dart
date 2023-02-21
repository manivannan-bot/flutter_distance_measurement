import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../routes/app_routes.dart';

class HomeCompleteScreen extends StatefulWidget {
  @override
  State<HomeCompleteScreen> createState() => _HomeCompleteScreenState();
}

const notificationChannelId = 'my_foreground';
const notificationId = 888;

Future<void> onStart(ServiceInstance serviceInstance)async{


  late StreamSubscription<Position> _positionStream;
  late List<Position> _positionHistory;

    _positionHistory = [];
    _positionStream = Geolocator.getPositionStream(
            locationSettings: const LocationSettings(
                accuracy: LocationAccuracy.high, distanceFilter: 1))
        .listen((Position position) {
      _positionHistory.add(position);
      debugPrint("pos2 $_positionHistory");
    });

  //receivedata to isolate
  serviceInstance.on("stop").listen((event) {
    double distance=0;
    for (int i = 0; i < _positionHistory.length - 1; i++) {
      distance += Geolocator.distanceBetween(
          _positionHistory[i].latitude,
          _positionHistory[i].longitude,
          _positionHistory[i + 1].latitude,
          _positionHistory[i + 1].longitude);
    }

    if(event!['action']=='stopservice'){
      //senddata from isolate
      Map<String,dynamic> dataToSend={'count':distance};
      serviceInstance.invoke('data',dataToSend);
      print("MANI data to Send $dataToSend");

  }
  });


}

Future<void> initializeService() async {
  final service = FlutterBackgroundService();
  await service.configure(
      androidConfiguration: AndroidConfiguration(
      onStart: onStart,
      autoStart: true,
      isForegroundMode: true,
  ), iosConfiguration: IosConfiguration());
}



class _HomeCompleteScreenState extends State<HomeCompleteScreen> {
  late GoogleMapController mapController;
  late Position _currentPosition;
  late StreamSubscription<Position> _positionStream;
  late List<Position> _positionHistory;
  late double count;


  @override
  void initState() {
    super.initState();
    initializeService();
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
              onPressed: () async{

                var isRunning=await FlutterBackgroundService().isRunning();
                if(isRunning){
                  FlutterBackgroundService().invoke('stop',{'action':'stopservice'});
                }

                FlutterBackgroundService().on('data').listen((event) {
                  if(event!.isNotEmpty && event!['count']!=null){
                     count=event!['count'] as double;

                     ScaffoldMessenger.of(context).showSnackBar(
                         SnackBar(content: Text(" Distance Travelled: $count")));
                  }
                });

                debugPrint("MANI on button clicked $count");


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
