import 'package:azep/core/utils/image_constant.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/custom_image_view.dart';
import '../../routes/app_routes.dart';

// ignore_for_file: must_be_immutable
class MenuDraweritem extends StatefulWidget {
  @override
  State<MenuDraweritem> createState() => _MenuDraweritemState();
}

class _MenuDraweritemState extends State<MenuDraweritem> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blue,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              arrowColor: Colors.blue,
              accountName: Text(
                "Manni",
                style: TextStyle(fontSize: 20),
              ),
              accountEmail: Text(""),
              currentAccountPicture: CircleAvatar(
                child: Image.network(
                  "http://dev-bee.com/Dev-Bee/achive.png",
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            Divider(
              color: Colors.white,
              thickness: 1,
            ),
            ListTile(
              leading: CustomImageView(svgPath: ImageConstant.imgHome),
              title: Text("Home"),
              textColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.homeStartScreen);
              },
            ),
            ListTile(
              leading: CustomImageView(svgPath: ImageConstant.imgArrowdown),
              title: Text("History"),
              textColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.rideScreen);
              },
            ),
            ListTile(
              leading: CustomImageView(svgPath: ImageConstant.imgVolume),
              title: Text("Fare Settings"),
              textColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.fareSettingsScreen);
              },
            ),
            ListTile(
              leading: CustomImageView(svgPath: ImageConstant.imgSettings),
              title: Text("Settings"),
              textColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.settingsScreen);
              },
            ),
            ListTile(
              leading: CustomImageView(svgPath: ImageConstant.imgPeople),
              title: Text("Community"),
              textColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.communityScreen);
              },
            ),
            ListTile(
              leading: CustomImageView(svgPath: ImageConstant.imgFire),
              title: Text("SurgePrice"),
              textColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.changePopupScreen);
              },
            ),
            ListTile(
              leading: CustomImageView(svgPath: ImageConstant.imgCar),
              title: Text("Support"),
              textColor: Colors.white,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.complaintScreen);
              },
            ),
          ],
        ),
      ),
    );
  }
}
