import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../ride_screen/widgets/ride_item_widget.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class RideScreen extends StatelessWidget {
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
                      onTap: () => onTapHome5(context))
                ],
                styleType: Style.bgFillBlueA200),
            body: Padding(
                padding: getPadding(left: 13, top: 13, right: 13),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(6.00));
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return RideItemWidget(
                          onTapCard: () => onTapCard(context));
                    }))));
  }

  onTapCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rideInfoScreen);
  }

  onTapHome5(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeStartScreen);
  }
}
