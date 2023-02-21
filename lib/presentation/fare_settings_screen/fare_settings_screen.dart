import 'package:azep/presentation/menu_draweritem/menu_draweritem.dart';
import 'package:flutter/material.dart';

import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../fare_settings_screen/widgets/fare_settings_item_widget.dart';

class FareSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: MenuDraweritem(),
            appBar: AppBar(
              title: Text("Fare Settings"),
            ),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 20, top: 47, right: 20),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(15.00));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return FareSettingsItemWidget(
                                    onTapColumndefault: () =>
                                        onTapColumndefault(context));
                              })),
                      Spacer()
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 51, right: 51, bottom: 46),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          child: Text("ADD"),
                          onPressed: () => onTapAdd(context))
                    ]))));
  }

  onTapColumndefault(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fareCalculationScreen);
  }

  onTapAdd(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fareEditScreen);
  }

  onTapHome4(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeStartScreen);
  }
}
