import 'package:flutter/material.dart';

import '../../../core/theme/app_decoration.dart';
import '../../../core/theme/app_style.dart';
import '../../../core/utils/color_constant.dart';
import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../core/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class RideItemWidget extends StatelessWidget {
  RideItemWidget({this.onTapCard});

  VoidCallback? onTapCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapCard!();
      },
      child: Container(
        padding: getPadding(
          left: 13,
          top: 10,
          right: 13,
          bottom: 10,
        ),
        decoration: AppDecoration.outlineBlack9003f.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder5,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgDriving,
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                    margin: getMargin(
                      top: 3,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 3,
                      bottom: 1,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Date : ",
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(
                                    10,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: "03-12-2022",
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(
                                    10,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Trip ID : ",
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(
                                    10,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w700,
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                              TextSpan(
                                text: "6608",
                                style: TextStyle(
                                  color: ColorConstant.black900,
                                  fontSize: getFontSize(
                                    10,
                                  ),
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  height: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 8,
                top: 4,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getSize(
                      10.00,
                    ),
                    width: getSize(
                      10.00,
                    ),
                    margin: getMargin(
                      top: 7,
                      bottom: 9,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.redA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          5.00,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      186.00,
                    ),
                    margin: getMargin(
                      left: 9,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Pickup :  ",
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(
                                10,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                "2, Palakkad Main Road,\nKuniyamthur, Tamil Nadu, 641008, India",
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(
                                10,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 8,
                top: 6,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: getSize(
                      10.00,
                    ),
                    width: getSize(
                      10.00,
                    ),
                    margin: getMargin(
                      top: 7,
                      bottom: 9,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.greenA700,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          5.00,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      186.00,
                    ),
                    margin: getMargin(
                      left: 9,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Drop :  ",
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(
                                10,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                "2, Palakkad Main Road,\nKuniyamthur, Tamil Nadu, 641008, India",
                            style: TextStyle(
                              color: ColorConstant.black900,
                              fontSize: getFontSize(
                                10,
                              ),
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: getVerticalSize(
                                1.00,
                              ),
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 24,
                top: 20,
              ),
              child: Row(
                children: [
                  Container(
                    width: getHorizontalSize(
                      60.00,
                    ),
                    padding: getPadding(
                      all: 4,
                    ),
                    decoration: AppDecoration.txtFillBlueA200.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                    ),
                    child: Text(
                      "COMPLETED",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold8.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(child: Text("REPORT"), onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
