import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../change_popup_screen/widgets/change_popup_item_widget.dart';
import 'package:flutter/material.dart';

class ChangePopupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      Container(
          width: getHorizontalSize(245.00),
          padding: getPadding(left: 13, top: 15, right: 13, bottom: 15),
          decoration: AppDecoration.outlineBlack9003f1
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                    padding: getPadding(left: 5, top: 11),
                    child: Text("Calculate Change",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold15Black900
                            .copyWith(height: getVerticalSize(1.00)))),
                Padding(
                    padding: getPadding(left: 5, top: 23),
                    child: ListView.separated(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: getVerticalSize(10.00));
                        },
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return ChangePopupItemWidget();
                        })),
                Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                        onTap: () {
                          onTapTxtOK(context);
                        },
                        child: Padding(
                            padding: getPadding(top: 40, right: 2),
                            child: Text("OK",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterBold15Black900
                                    .copyWith(height: getVerticalSize(1.00))))))
              ]))
    ])));
  }

  onTapTxtOK(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.rideInfoScreen);
  }
}
