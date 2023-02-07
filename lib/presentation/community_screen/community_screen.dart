
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
import 'package:flutter/material.dart';

class CommunityScreen extends StatelessWidget {
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
                          getMargin(left: 21, top: 64, right: 21, bottom: 26),
                      onTap: () => onTapHome10(context))
                ],
                styleType: Style.bgFillBlueA200),
            body: Container(
                width: size.width,
                padding: getPadding(left: 43, top: 87, right: 43),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("JOIN COMMUNITY",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBlack20
                              .copyWith(height: getVerticalSize(1.00))),
                      Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(top: 27),
                          color: ColorConstant.whiteA700,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  getHorizontalSize(10.00))),
                          child: Container(
                              height: getVerticalSize(39.00),
                              width: getHorizontalSize(288.00),
                              padding: getPadding(
                                  left: 8, top: 7, right: 8, bottom: 7),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Stack(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSearch,
                                    height: getSize(24.00),
                                    width: getSize(24.00),
                                    alignment: Alignment.topRight)
                              ]))),
                      Padding(
                          padding: getPadding(left: 13, top: 40, right: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgSearch100x100,
                                    height: getSize(100.00),
                                    width: getSize(100.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(10.00)),
                                    onTap: () {
                                      onTapImgSearchOne(context);
                                    }),
                                CustomImageView(
                                    imagePath: ImageConstant.imgSearch1,
                                    height: getSize(100.00),
                                    width: getSize(100.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(10.00)))
                              ])),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 3, right: 32),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("SAROJA AUTO SERVICES",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold10Black900
                                            .copyWith(
                                                height: getVerticalSize(1.00))),
                                    Text("STAR AUTO",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold10Black900
                                            .copyWith(
                                                height: getVerticalSize(1.00)))
                                  ]))),
                      Padding(
                          padding: getPadding(left: 13, top: 23, right: 8),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgSearch2,
                                    height: getSize(100.00),
                                    width: getSize(100.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(10.00))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgSearch3,
                                    height: getSize(100.00),
                                    width: getSize(100.00),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(10.00)))
                              ])),
                      Padding(
                          padding: getPadding(
                              left: 32, top: 3, right: 29, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("UNGA AUTO",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold10Black900
                                        .copyWith(
                                            height: getVerticalSize(1.00))),
                                Text("ENGA AUTO",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold10Black900
                                        .copyWith(
                                            height: getVerticalSize(1.00)))
                              ]))
                    ]))));
  }

  onTapImgSearchOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.communityDetailsScreen);
  }

  onTapHome10(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeStartScreen);
  }
}
