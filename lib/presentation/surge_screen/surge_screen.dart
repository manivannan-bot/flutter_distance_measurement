import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';

class SurgeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: getHorizontalSize(
                241.00,
              ),
              padding: getPadding(
                left: 11,
                top: 8,
                right: 11,
                bottom: 8,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Surge pricing 4.01x",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtInterRegular15.copyWith(
                      height: getVerticalSize(
                        1.00,
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      35.00,
                    ),
                    width: getHorizontalSize(
                      212.00,
                    ),
                    margin: getMargin(
                      top: 59,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: getPadding(
                              left: 12,
                            ),
                            child: Text(
                              "3.30",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold15Black900.copyWith(
                                height: getVerticalSize(
                                  1.00,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getVerticalSize(
                              35.00,
                            ),
                            width: getHorizontalSize(
                              212.00,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  5.00,
                                ),
                              ),
                              border: Border.all(
                                color: ColorConstant.black900,
                                width: getHorizontalSize(
                                  1.00,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("OK"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
