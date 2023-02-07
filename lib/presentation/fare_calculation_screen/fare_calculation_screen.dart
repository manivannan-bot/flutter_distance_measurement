
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_image_view.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class FareCalculationScreen extends StatelessWidget {
  List<String> dropdownItemList = ["test", "test1", "test2", "test3"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(110.00),
                leadingWidth: 44,
                leading: AppbarImage(
                    height: getSize(25.00),
                    width: getSize(25.00),
                    svgPath: ImageConstant.imgMenu,
                    margin: getMargin(left: 19, top: 63, bottom: 22)),
                title: AppbarTitle(
                    text: "ORAM PO AUTO ",
                    margin: getMargin(left: 9, top: 62, bottom: 20)),
                actions: [
                  AppbarImage(
                      height: getVerticalSize(20.00),
                      width: getHorizontalSize(25.00),
                      svgPath: ImageConstant.imgHome,
                      margin:
                          getMargin(left: 20, top: 65, right: 20, bottom: 25),
                      onTap: () => onTapHome8(context))
                ],
                styleType: Style.bgFillBlueA200),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 29),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    height: getVerticalSize(46.00),
                                    width: getHorizontalSize(166.00),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  padding: getPadding(
                                                      left: 57,
                                                      top: 7,
                                                      right: 57,
                                                      bottom: 7),
                                                  decoration: AppDecoration
                                                      .outlineBlack900
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder5),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("1.80",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterBold20Black900
                                                                .copyWith(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00)))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(13.00),
                                                  width:
                                                      getHorizontalSize(52.00),
                                                  margin: getMargin(left: 7),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomCenter,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        10.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        52.00),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .whiteA700))),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                                "KM Meter",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterBold10Black900
                                                                    .copyWith(
                                                                        height:
                                                                            getVerticalSize(1.00))))
                                                      ])))
                                        ])),
                                Container(
                                    height: getVerticalSize(45.00),
                                    width: getHorizontalSize(169.00),
                                    margin: getMargin(left: 9, bottom: 1),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  padding: getPadding(
                                                      left: 37,
                                                      top: 7,
                                                      right: 37,
                                                      bottom: 7),
                                                  decoration: AppDecoration
                                                      .outlineBlack900
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder5),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("00:00:00",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtInterBold20Black900
                                                                .copyWith(
                                                                    height:
                                                                        getVerticalSize(
                                                                            1.00)))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(13.00),
                                                  width:
                                                      getHorizontalSize(75.00),
                                                  margin: getMargin(left: 5),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        10.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        75.00),
                                                                margin:
                                                                    getMargin(
                                                                        top: 1),
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: ColorConstant
                                                                            .whiteA700))),
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                                "Waiting Time",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtInterBold10Black900
                                                                    .copyWith(
                                                                        height:
                                                                            getVerticalSize(1.00))))
                                                      ])))
                                        ]))
                              ])),
                      Container(
                          height: getVerticalSize(45.00),
                          width: getHorizontalSize(344.00),
                          margin: getMargin(top: 8),
                          child: Stack(alignment: Alignment.topLeft, children: [
                            CustomDropDown(
                                width: 344,
                                focusNode: FocusNode(),
                                icon: Container(
                                    margin: getMargin(left: 30, right: 6),
                                    child: CustomImageView(
                                        svgPath: ImageConstant
                                            .imgMaterialsymbolsarrowdropdown)),
                                hintText: "DAY",
                                variant: DropDownVariant.OutlineBlack900,
                                padding: DropDownPadding.PaddingT7,
                                fontStyle: DropDownFontStyle.InterBold20,
                                alignment: Alignment.bottomCenter,
                                items: dropdownItemList,
                                onChanged: (value) {}),
                            Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                    height: getVerticalSize(13.00),
                                    width: getHorizontalSize(92.00),
                                    margin: getMargin(left: 15),
                                    child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topCenter,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(10.00),
                                                  width:
                                                      getHorizontalSize(92.00),
                                                  margin: getMargin(top: 1),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .whiteA700))),
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: getPadding(left: 1),
                                                  child: Text(
                                                      "Night Fare Status",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold10Black900
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.00)))))
                                        ])))
                          ])),
                      Container(
                          width: getHorizontalSize(288.00),
                          margin: getMargin(top: 13),
                          padding: getPadding(
                              left: 30, top: 6, right: 49, bottom: 6),
                          decoration: AppDecoration.txtOutlineBlack9003f2
                              .copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.txtRoundedBorder10),
                          child: Text("CALCULATE FARE",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold20
                                  .copyWith(height: getVerticalSize(1.00)))),
                      Container(
                          height: getVerticalSize(87.00),
                          width: getHorizontalSize(174.00),
                          margin: getMargin(top: 21),
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Text("₹ 99.10",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold50.copyWith(
                                        height: getVerticalSize(1.00)))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: getPadding(right: 48),
                                    child: Text("Total",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold25.copyWith(
                                            height: getVerticalSize(1.00)))))
                          ])),
                      Container(
                          width: size.width,
                          margin: getMargin(top: 25),
                          padding: getPadding(
                              left: 17, top: 34, right: 17, bottom: 34),
                          decoration: AppDecoration.fillBlueA200.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: getVerticalSize(1.00),
                                    width: getHorizontalSize(349.00),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.whiteA700)),
                                Padding(
                                    padding:
                                        getPadding(left: 3, top: 4, right: 1),
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
                                          Text("0.00 km",
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
                                              child: Text("00:13:01",
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
                                          Text("₹ 18.0",
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
                                          Text("₹ 0.00",
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
                                              child: Text("₹ 3.00",
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
                                              child: Text("₹ 18.0",
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
                                    padding: getPadding(
                                        left: 3, top: 3, bottom: 165),
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
                                          Text("₹ 0.00",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtInterBold15WhiteA700
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00)))
                                        ]))
                              ]))
                    ]))));
  }

  onTapHome8(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeStartScreen);
  }
}
