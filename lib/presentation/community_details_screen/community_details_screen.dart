import 'package:flutter/material.dart';

import '../../core/theme/app_style.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../core/widgets/custom_image_view.dart';
import '../../routes/app_routes.dart';

class CommunityDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: AppBar(
              title: Text("Community Details"),
            ),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        width: size.width,
                        margin: getMargin(top: 45),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(49.00),
                                      width: getHorizontalSize(255.00),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.topCenter,
                                                child: Text("WELCOME TO",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterBlack20
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00)))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Text(
                                                    "SAROJA AUTO SERVICES",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterBlack20
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00))))
                                          ]))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgSearch100x100,
                                  height: getSize(100.00),
                                  width: getSize(100.00),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(10.00)),
                                  alignment: Alignment.center,
                                  margin: getMargin(top: 16)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(top: 3),
                                      child: Text("100  members",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtInterBold10Black900
                                              .copyWith(
                                                  height:
                                                      getVerticalSize(1.00))))),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 68),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray40002)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 19, top: 8, right: 23),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgRectangle,
                                                height: getSize(30.00),
                                                width: getSize(30.00),
                                                radius: BorderRadius.circular(
                                                    getHorizontalSize(15.00))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 18,
                                                    top: 5,
                                                    bottom: 5),
                                                child: Text("Ram",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtInterRegular15
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.00)))),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(24.00),
                                                width: getSize(24.00),
                                                margin: getMargin(
                                                    top: 3, bottom: 3))
                                          ]))),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 9),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray40002)),
                              Padding(
                                  padding: getPadding(left: 19, top: 8),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle30x30,
                                        height: getSize(30.00),
                                        width: getSize(30.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(15.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 6, bottom: 4),
                                        child: Text("Somu",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular15
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.00))))
                                  ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 9),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray40002)),
                              Padding(
                                  padding: getPadding(left: 19, top: 8),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle1,
                                        height: getSize(30.00),
                                        width: getSize(30.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(15.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 6, bottom: 4),
                                        child: Text("Teju",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular15
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.00))))
                                  ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(389.00),
                                  margin: getMargin(top: 9),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray40002)),
                              Padding(
                                  padding: getPadding(left: 19, top: 8),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle2,
                                        height: getSize(30.00),
                                        width: getSize(30.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(15.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 7, bottom: 3),
                                        child: Text("Raju",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular15
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.00))))
                                  ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 9),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray40002)),
                              Padding(
                                  padding: getPadding(left: 19, top: 8),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle3,
                                        height: getSize(30.00),
                                        width: getSize(30.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(15.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 6, bottom: 4),
                                        child: Text("Suraj",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular15
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.00))))
                                  ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(389.00),
                                  margin: getMargin(top: 9),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray40002)),
                              Padding(
                                  padding: getPadding(left: 19, top: 8),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle4,
                                        height: getSize(30.00),
                                        width: getSize(30.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(15.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 5, bottom: 5),
                                        child: Text("Ashok",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular15
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.00))))
                                  ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(389.00),
                                  margin: getMargin(top: 9),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray40002)),
                              Padding(
                                  padding: getPadding(left: 19, top: 8),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle5,
                                            height: getSize(30.00),
                                            width: getSize(30.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(15.00))),
                                        Padding(
                                            padding: getPadding(
                                                left: 18, top: 4, bottom: 6),
                                            child: Text("Mani",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular15
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00))))
                                      ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(389.00),
                                  margin: getMargin(top: 9),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray40002)),
                              Padding(
                                  padding: getPadding(left: 18, top: 17),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgRectangle6,
                                            height: getSize(30.00),
                                            width: getSize(30.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(15.00))),
                                        Padding(
                                            padding: getPadding(
                                                left: 18, top: 4, bottom: 6),
                                            child: Text("Hari",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterRegular15
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.00))))
                                      ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 9),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray40002)),
                              Padding(
                                  padding: getPadding(left: 18, top: 8),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle7,
                                        height: getSize(30.00),
                                        width: getSize(30.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(15.00))),
                                    Padding(
                                        padding: getPadding(
                                            left: 18, top: 5, bottom: 5),
                                        child: Text("Shroovoo",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterRegular15
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.00))))
                                  ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 9),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray40002)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle,
                                  height: getSize(30.00),
                                  width: getSize(30.00),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(15.00)),
                                  margin: getMargin(left: 18, top: 8)),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: getHorizontalSize(389.00),
                                  margin: getMargin(top: 9),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray40002))
                            ]))))));
  }

  onTapHome11(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeStartScreen);
  }
}
