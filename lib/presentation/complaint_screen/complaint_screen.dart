import 'package:azep/presentation/menu_draweritem/menu_draweritem.dart';
import 'package:flutter/material.dart';

import '../../core/theme/app_decoration.dart';
import '../../core/theme/app_style.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../core/widgets/custom_drop_down.dart';
import '../../core/widgets/custom_image_view.dart';
import '../../routes/app_routes.dart';

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ComplaintScreen extends StatelessWidget {
  List<String> dropdownItemList = ["test", "test1", "test2", "test3"];

  List<String> dropdownItemList1 = ["test", "test1", "test2", "test3"];

  List<String> dropdownItemList2 = ["test", "test1", "test2", "test3"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: MenuDraweritem(),
            appBar: AppBar(
              title: Text("Support"),
            ),
            body: Container(
                width: size.width,
                padding: getPadding(left: 49, top: 87, right: 49),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("COMPLAINT ",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBlack20
                              .copyWith(height: getVerticalSize(1.00))),
                      CustomDropDown(
                          width: 288,
                          focusNode: FocusNode(),
                          icon: Container(
                              margin: getMargin(left: 30, right: 9),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowDropDown)),
                          hintText: "Language",
                          margin: getMargin(top: 19),
                          items: dropdownItemList,
                          onChanged: (value) {}),
                      CustomDropDown(
                          width: 288,
                          focusNode: FocusNode(),
                          icon: Container(
                              margin: getMargin(left: 30, right: 9),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowDropDown)),
                          hintText: "Subject",
                          margin: getMargin(top: 6),
                          items: dropdownItemList1,
                          onChanged: (value) {}),
                      CustomDropDown(
                          width: 288,
                          focusNode: FocusNode(),
                          icon: Container(
                              margin: getMargin(left: 30, right: 9),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgArrowDropDown)),
                          hintText: "Trip ID",
                          margin: getMargin(top: 6),
                          items: dropdownItemList2,
                          onChanged: (value) {}),
                      Container(
                          width: getHorizontalSize(288.00),
                          margin: getMargin(left: 4, top: 6, bottom: 5),
                          padding: getPadding(
                              left: 19, top: 14, right: 19, bottom: 14),
                          decoration: AppDecoration.outlineBlack9003f.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder5),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 111),
                                    child: Text("Complaint",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold10Gray50001
                                            .copyWith(
                                                height: getVerticalSize(1.00))))
                              ]))
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 51, right: 51, bottom: 46),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("ADD"),
                  )
                ]))));
  }

  onTapSubmit(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.complaintsListScreen);
  }

  onTapHome6(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeStartScreen);
  }
}
