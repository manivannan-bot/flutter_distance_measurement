import 'package:flutter/material.dart';

import '../../core/theme/app_decoration.dart';
import '../../core/theme/app_style.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../core/widgets/custom_image_view.dart';
import '../../routes/app_routes.dart';

// ignore_for_file: must_be_immutable
class SearchScreen extends StatelessWidget {
  TextEditingController groupSeventySixController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: size.width,
                          padding: getPadding(top: 16, bottom: 16),
                          decoration: AppDecoration.fillBlueA200,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                AppBar(
                                  title: Text("AZEP"),
                                ),
                                Padding(
                                    padding: getPadding(top: 18, right: 22),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    width: getHorizontalSize(
                                                        288.00),
                                                    padding: getPadding(
                                                        left: 9,
                                                        top: 4,
                                                        right: 9,
                                                        bottom: 4),
                                                    decoration: AppDecoration
                                                        .outlineWhiteA700
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder10),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                      262.00),
                                                              margin: getMargin(
                                                                  bottom: 18),
                                                              child: Text(
                                                                  "2- Palakkad Main Road - Kuniyamthur - Tamil Nadu 641008, India",
                                                                  maxLines:
                                                                      null,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterBold12WhiteA700
                                                                      .copyWith(
                                                                          height:
                                                                              getVerticalSize(1.00))))
                                                        ])),
                                              ]),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgUpdownarrow,
                                              height: getSize(24.00),
                                              width: getSize(24.00),
                                              margin: getMargin(
                                                  left: 5, top: 48, bottom: 59))
                                        ]))
                              ])),
                      Container(
                          width: getHorizontalSize(378.00),
                          margin: getMargin(left: 6, top: 5, right: 6),
                          padding: getPadding(
                              left: 14, top: 10, right: 14, bottom: 10),
                          decoration: AppDecoration.outlineBlack9004c,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Results ",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterRegular12.copyWith(
                                        height: getVerticalSize(1.00))),
                                Padding(
                                    padding: getPadding(top: 14, bottom: 5),
                                    child: Row(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgLocation,
                                          height: getVerticalSize(20.00),
                                          width: getHorizontalSize(14.00)),
                                      Padding(
                                          padding: getPadding(
                                              left: 21, top: 3, bottom: 1),
                                          child: Text(
                                              "165, Poosari, Mariappan Street, Ramanathapuram ",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtInterRegular12
                                                  .copyWith(
                                                      height: getVerticalSize(
                                                          1.00))))
                                    ]))
                              ])),
                      Container(
                          height: getVerticalSize(1.00),
                          width: getHorizontalSize(378.00),
                          margin: getMargin(bottom: 5),
                          decoration:
                              BoxDecoration(color: ColorConstant.gray50002))
                    ]))));
  }

  onTapHome9(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeStartScreen);
  }
}
