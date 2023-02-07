
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_image_view.dart';

// ignore_for_file: must_be_immutable
class MenuDraweritem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        height: size.height,
        width: getHorizontalSize(
          246.00,
        ),
        decoration: AppDecoration.fillWhiteA700,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: getMargin(
                  bottom: 734,
                ),
                padding: getPadding(
                  left: 19,
                  top: 20,
                  right: 19,
                  bottom: 20,
                ),
                decoration: AppDecoration.fillBlueA200,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgMenu,
                      height: getSize(
                        25.00,
                      ),
                      width: getSize(
                        25.00,
                      ),
                      margin: getMargin(
                        top: 42,
                        bottom: 1,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                        top: 42,
                        right: 112,
                      ),
                      child: Text(
                        "AZEP ",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBlack22.copyWith(
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: getVerticalSize(
                  734.00,
                ),
                width: getHorizontalSize(
                  246.00,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgScreenshot20221202,
                      height: getVerticalSize(
                        734.00,
                      ),
                      width: getHorizontalSize(
                        246.00,
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        height: getVerticalSize(
                          39.00,
                        ),
                        width: getHorizontalSize(
                          195.00,
                        ),
                        margin: getMargin(
                          bottom: 42,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.blueA200,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              10.00,
                            ),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: ColorConstant.black9003f,
                              spreadRadius: getHorizontalSize(
                                2.00,
                              ),
                              blurRadius: getHorizontalSize(
                                2.00,
                              ),
                              offset: Offset(
                                0,
                                0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: size.height,
                width: getHorizontalSize(
                  246.00,
                ),
                decoration: AppDecoration.fillBlueA200,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: getPadding(
                          left: 23,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgMenu,
                              height: getSize(
                                25.00,
                              ),
                              width: getSize(
                                25.00,
                              ),
                              margin: getMargin(
                                top: 64,
                                bottom: 755,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                                top: 63,
                                bottom: 753,
                              ),
                              child: Text(
                                "AZEP",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBlack22.copyWith(
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Container(
                              height: size.height,
                              width: getHorizontalSize(
                                1.00,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.blueGray100,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: getPadding(
                          left: 23,
                          top: 128,
                          right: 73,
                          bottom: 10,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle,
                              height: getSize(
                                60.00,
                              ),
                              width: getSize(
                                60.00,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  30.00,
                                ),
                              ),
                              alignment: Alignment.centerRight,
                              margin: getMargin(
                                right: 30,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: getPadding(
                                  top: 6,
                                  right: 21,
                                ),
                                child: Text(
                                  "#azep_OPA0123",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterBold10.copyWith(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 5,
                                top: 12,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgHome,
                                    height: getVerticalSize(
                                      20.00,
                                    ),
                                    width: getHorizontalSize(
                                      25.00,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 18,
                                      top: 1,
                                    ),
                                    child: Text(
                                      "Home",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold15WhiteA700
                                          .copyWith(
                                        height: getVerticalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 1,
                                top: 25,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgArrowdown,
                                    height: getVerticalSize(
                                      20.00,
                                    ),
                                    width: getHorizontalSize(
                                      24.00,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 19,
                                      top: 1,
                                    ),
                                    child: Text(
                                      "History",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold15WhiteA700
                                          .copyWith(
                                        height: getVerticalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 24,
                                right: 8,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgVolume,
                                    height: getSize(
                                      25.00,
                                    ),
                                    width: getSize(
                                      25.00,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 4,
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "Fare Settings",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold15WhiteA700
                                          .copyWith(
                                        height: getVerticalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 1,
                                top: 26,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgSettings,
                                    height: getSize(
                                      24.00,
                                    ),
                                    width: getSize(
                                      24.00,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 18,
                                      top: 4,
                                    ),
                                    child: Text(
                                      "Settings",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold15WhiteA700
                                          .copyWith(
                                        height: getVerticalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 21,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgPeople,
                                    height: getSize(
                                      25.00,
                                    ),
                                    width: getSize(
                                      25.00,
                                    ),
                                    margin: getMargin(
                                      bottom: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 18,
                                      top: 7,
                                    ),
                                    child: Text(
                                      "Community",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold15WhiteA700
                                          .copyWith(
                                        height: getVerticalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 20,
                                right: 7,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgFire,
                                    height: getSize(
                                      24.00,
                                    ),
                                    width: getSize(
                                      24.00,
                                    ),
                                    margin: getMargin(
                                      bottom: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 6,
                                    ),
                                    child: Text(
                                      "Surge pricing",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold15WhiteA700
                                          .copyWith(
                                        height: getVerticalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 22,
                              ),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgCar,
                                    height: getSize(
                                      25.00,
                                    ),
                                    width: getSize(
                                      25.00,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 18,
                                      top: 3,
                                      bottom: 2,
                                    ),
                                    child: Text(
                                      "Support",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtInterBold15WhiteA700
                                          .copyWith(
                                        height: getVerticalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                height: getVerticalSize(
                                  34.00,
                                ),
                                width: getHorizontalSize(
                                  127.00,
                                ),
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: getPadding(
                                          bottom: 1,
                                        ),
                                        child: Text(
                                          "MADE WITH        AZEP METER",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtMinaBold9.copyWith(
                                            height: getVerticalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "V 1.0.1",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtMinaBold9.copyWith(
                                          height: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgHeart,
                                      height: getSize(
                                        20.00,
                                      ),
                                      width: getSize(
                                        20.00,
                                      ),
                                      alignment: Alignment.bottomCenter,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: getVerticalSize(
                          1.00,
                        ),
                        width: getHorizontalSize(
                          246.00,
                        ),
                        margin: getMargin(
                          top: 109,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.blueGray10001,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
