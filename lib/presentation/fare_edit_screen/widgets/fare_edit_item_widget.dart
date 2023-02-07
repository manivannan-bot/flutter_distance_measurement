
import 'package:flutter/material.dart';

import '../../../core/utils/color_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';

// ignore: must_be_immutable
class FareEditItemWidget extends StatelessWidget {
  FareEditItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getVerticalSize(
        45.00,
      ),
      width: getHorizontalSize(
        344.00,
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: getPadding(
                left: 21,
                top: 4,
                right: 21,
                bottom: 4,
              ),
              decoration: AppDecoration.outlineBlack900.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder5,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: getPadding(
                      top: 5,
                    ),
                    child: Text(
                      "₹ 18.00",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold20Black900.copyWith(
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
            alignment: Alignment.topLeft,
            child: Container(
              height: getVerticalSize(
                13.00,
              ),
              width: getHorizontalSize(
                122.00,
              ),
              margin: getMargin(
                left: 7,
              ),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        10.00,
                      ),
                      width: getHorizontalSize(
                        122.00,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: getPadding(
                        left: 1,
                      ),
                      child: Text(
                        "Additional Fare per KM",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtInterBold10Black900.copyWith(
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
