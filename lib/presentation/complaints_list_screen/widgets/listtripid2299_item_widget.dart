
import 'package:azep/core/utils/size_utils.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_decoration.dart';
import '../../../theme/app_style.dart';

// ignore: must_be_immutable
class Listtripid2299ItemWidget extends StatelessWidget {
  Listtripid2299ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 7,
        top: 3,
        right: 7,
        bottom: 3,
      ),
      decoration: AppDecoration.outlineBlack9003f.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              bottom: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Trip ID : 2299",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtInterBold10Gray50001.copyWith(
                    height: getVerticalSize(
                      1.00,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Subject :",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold12.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 7,
                        bottom: 2,
                      ),
                      child: Text(
                        "KM LOW",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtArialMT10.copyWith(
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 6,
              bottom: 8,
            ),
            child: Text(
              "PENDING",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtInterBold12RedA700.copyWith(
                height: getVerticalSize(
                  1.00,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
