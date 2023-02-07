import 'package:azep/core/utils/color_constant.dart';
import 'package:flutter/material.dart';

import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_text_form_field.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_image_view.dart';
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
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
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
                          getMargin(left: 23, top: 66, right: 23, bottom: 24),
                      onTap: () => onTapHome2(context))
                ],
                styleType: Style.bgFillBlueA200),
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
                      CustomTextFormField(
                          width: 293,
                          focusNode: FocusNode(),
                          controller: rectangleFourController,
                          margin: getMargin(left: 1, top: 9)),
                      Padding(
                          padding: getPadding(left: 4, top: 30),
                          child: Text("Driver ID",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold15
                                  .copyWith(height: getVerticalSize(1.00)))),
                      CustomTextFormField(
                          width: 293,
                          focusNode: FocusNode(),
                          controller: rectangleTenController,
                          margin: getMargin(left: 1, top: 10)),
                      Padding(
                          padding: getPadding(left: 1, top: 36),
                          child: Text("Change Mobile No",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold15
                                  .copyWith(height: getVerticalSize(1.00)))),
                      CustomTextFormField(
                          width: 293,
                          focusNode: FocusNode(),
                          controller: rectangleElevenController,
                          margin: getMargin(left: 1, top: 4),
                          textInputAction: TextInputAction.done),
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
