import 'package:flutter/material.dart';

import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../complaints_list_screen/widgets/listtripid2299_item_widget.dart';

class ComplaintsListScreen extends StatelessWidget {
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
                      onTap: () => onTapHome7(context))
                ],
                styleType: Style.bgFillBlueA200),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 10, top: 12, right: 9),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(12.00));
                              },
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Listtripid2299ItemWidget();
                              })),
                      Spacer()
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 51, right: 51, bottom: 46),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                      child: Text("ADD COMPLAINT"),
                      onPressed: () => onTapAddcomplaint(context))
                ]))));
  }

  onTapAddcomplaint(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.complaintScreen);
  }

  onTapHome7(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeStartScreen);
  }
}
