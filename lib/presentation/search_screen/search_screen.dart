
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
import '/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

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
                                CustomAppBar(
                                    height: getVerticalSize(56.00),
                                    leadingWidth: 44,
                                    leading: AppbarImage(
                                        height: getSize(25.00),
                                        width: getSize(25.00),
                                        svgPath: ImageConstant.imgMenu,
                                        margin: getMargin(left: 19, bottom: 1)),
                                    title: AppbarTitle(
                                        text: "ORAM PO AUTO ",
                                        margin: getMargin(left: 9)),
                                    actions: [
                                      AppbarImage(
                                          height: getVerticalSize(20.00),
                                          width: getHorizontalSize(25.00),
                                          svgPath: ImageConstant.imgHome,
                                          margin: getMargin(
                                              left: 21,
                                              top: 1,
                                              right: 21,
                                              bottom: 5),
                                          onTap: () => onTapHome9(context))
                                    ]),
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
                                                CustomTextFormField(
                                                    width: 288,
                                                    focusNode: FocusNode(),
                                                    controller:
                                                        groupSeventySixController,
                                                    hintText: "Destination",
                                                    margin: getMargin(top: 11),
                                                    variant:
                                                        TextFormFieldVariant
                                                            .OutlineWhiteA700,
                                                    shape: TextFormFieldShape
                                                        .RoundedBorder10,
                                                    textInputAction:
                                                        TextInputAction.done)
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
