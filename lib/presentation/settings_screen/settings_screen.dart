import 'package:azep/presentation/menu_draweritem/menu_draweritem.dart';
import 'package:flutter/material.dart';

import '../../core/theme/app_style.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../core/widgets/custom_image_view.dart';
import '../../routes/app_routes.dart';

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SettingsScreen extends StatelessWidget {
  TextEditingController rectangleFourController = TextEditingController();

  TextEditingController rectangleTenController = TextEditingController();

  TextEditingController rectangleElevenController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: MenuDraweritem(),
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: Text("Settings"),
            ),
            body: Container(
                width: size.width,
                padding: getPadding(left: 48, top: 54, right: 48, bottom: 54),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getSize(100.00),
                              width: getSize(100.00),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle,
                                        height: getSize(100.00),
                                        width: getSize(100.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(50.00)),
                                        alignment: Alignment.center),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCamera,
                                        height: getVerticalSize(18.00),
                                        width: getHorizontalSize(20.00),
                                        alignment: Alignment.bottomRight,
                                        margin: getMargin(right: 6, bottom: 6))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 7),
                              child: Text("#azep_OPA0123",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold10Black900
                                      .copyWith(
                                          height: getVerticalSize(1.00))))),
                      Padding(
                          padding: getPadding(left: 4, top: 18),
                          child: Text("NAME",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold15
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Padding(
                          padding: getPadding(left: 4, top: 30),
                          child: Text("Driver ID",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold15
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Padding(
                          padding: getPadding(left: 1, top: 36),
                          child: Text("Change Mobile No",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold15
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 3, bottom: 5),
                              child: Text("send  OTP",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold10BlueA200
                                      .copyWith(
                                          height: getVerticalSize(1.00)))))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 51, right: 51, bottom: 47),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          child: Text("SAVE"),
                          onPressed: () => onTapSave(context))
                    ]))));
  }

  onTapSave(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fareSettingsScreen);
  }

  onTapHome2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeStartScreen);
  }
}
