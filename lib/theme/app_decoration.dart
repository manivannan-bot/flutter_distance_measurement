import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';


class AppDecoration {
  static BoxDecoration get txtFillBlueA200 => BoxDecoration(
        color: ColorConstant.blueA200,
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: ColorConstant.blueGray100,
      );
  static BoxDecoration get txtOutlineBlack9003f1 => BoxDecoration();
  static BoxDecoration get txtOutlineBlack9003f2 => BoxDecoration(
        color: ColorConstant.blueA200,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            2.00,
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillBlueA200 => BoxDecoration(
        color: ColorConstant.blueA200,
      );
  static BoxDecoration get outlineBlack9004c => BoxDecoration(
        color: ColorConstant.gray200,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9004c,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get txtOutlineBlack9003f => BoxDecoration();
  static BoxDecoration get outlineBlack9003f1 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003f3 => BoxDecoration(
        color: ColorConstant.gray600,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003f2 => BoxDecoration(
        color: ColorConstant.blueA200,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black9003f,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get txtFillGray400 => BoxDecoration(
        color: ColorConstant.gray400,
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL20 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        20.00,
      ),
    ),
  );

  static BorderRadius customBorderTL30 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        30.00,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        30.00,
      ),
    ),
  );

  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5.00,
    ),
  );

  static BorderRadius circleBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30.00,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius txtRoundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5.00,
    ),
  );

  static BorderRadius txtRoundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10.00,
    ),
  );

  static BorderRadius circleBorder50 = BorderRadius.circular(
    getHorizontalSize(
      50.00,
    ),
  );

  static BorderRadius circleBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15.00,
    ),
  );
}
