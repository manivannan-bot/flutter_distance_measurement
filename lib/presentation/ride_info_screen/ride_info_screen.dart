import 'package:flutter/material.dart';

import '../../core/theme/app_decoration.dart';
import '../../core/theme/app_style.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';

class RideInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: AppBar(
              title: Text("Ride Info"),
            ),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 25),
                          child: Text("Total",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold25
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Text("₹ 168.06",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold50
                              .copyWith(height: getVerticalSize(1.00))),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 69),
                          padding: getPadding(
                              left: 17, top: 34, right: 17, bottom: 34),
                          decoration: AppDecoration.fillBlueA200.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(left: 2, top: 13, right: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("Start",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterBold15WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))),
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text(
                                                  "Fri, Dec 2, 2022 09:57:30",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterBold15WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 2, top: 8, right: 3),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("End",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold15WhiteA700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00))),
                                          Text("Fri, Dec 2, 2022 12:00:00",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold15WhiteA700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00)))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 3, top: 4, right: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Trip Duration",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterBold15WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("02:03:00",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterBold15WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))))
                                        ])),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(349.00),
                                    margin: getMargin(top: 7),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700)),
                                Padding(
                                    padding:
                                        getPadding(left: 3, top: 4, right: 4),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Distance",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold15WhiteA700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00))),
                                          Text("7.00 km",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold15WhiteA700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00)))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 2, top: 5, right: 2),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Waiting Time",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterBold15WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("00:10:01",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterBold15WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))))
                                        ])),
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(349.00),
                                    margin: getMargin(top: 4),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700)),
                                Padding(
                                    padding:
                                        getPadding(left: 3, top: 8, right: 3),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Base fare",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold15WhiteA700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00))),
                                          Text("₹ 40.0",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold15WhiteA700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00)))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 2, top: 4, right: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Distance fare",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold15WhiteA700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00))),
                                          Text("₹ 93.06",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold15WhiteA700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00)))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 2, top: 5, right: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Waiting fare",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterBold15WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("₹ 1.50",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterBold15WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))))
                                        ])),
                                Padding(
                                    padding:
                                        getPadding(left: 4, top: 4, right: 2),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 1),
                                              child: Text("Surge pricing",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterBold15WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00)))),
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("₹ 0.0",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtInterBold15WhiteA700
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.00))))
                                        ])),
                                Padding(
                                    padding: getPadding(left: 3, top: 3),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("Additional fare",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold15WhiteA700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00))),
                                          Text("₹ 20.00",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold15WhiteA700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00)))
                                        ])),
                                Spacer(),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtPriceSix(context);
                                    },
                                    child: Text("CALCULATE CHANGE",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold15WhiteA700
                                            .copyWith(
                                                height: getVerticalSize(1.00))))
                              ]))
                    ]))));
  }

  onTapTxtPriceSix(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.changePopupScreen);
  }

  onTapHome1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeStartScreen);
  }
}
