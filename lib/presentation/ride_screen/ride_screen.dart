import 'package:azep/presentation/menu_draweritem/menu_draweritem.dart';
import 'package:flutter/material.dart';

import '../../core/controller/login_api.dart';
import '../../routes/app_routes.dart';

class RideScreen extends StatefulWidget {
  @override
  State<RideScreen> createState() => _RideScreenState();
}

class _RideScreenState extends State<RideScreen> {
  var loginApi = LoginAPI();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: MenuDraweritem(),
            appBar: AppBar(
              title: Text("History"),
            ),
            body: FutureBuilder(
              future: loginApi.getAnnouncement(),
              builder: (context, snapshot) {
                if (!snapshot.hasData &&
                    snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else {
                  return Container(
                    child: Text(""),
                  );
                }
              },
            )));
  }

  onTapCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rideInfoScreen);
  }

  onTapHome5(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeStartScreen);
  }
}
