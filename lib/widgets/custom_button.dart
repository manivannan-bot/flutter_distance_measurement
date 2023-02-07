import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class ElevatedButton extends StatelessWidget {
  ElevatedButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        getHorizontalSize(width ?? 0),
        getVerticalSize(height ?? 0),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT9:
        return getPadding(
          left: 7,
          top: 9,
          right: 7,
          bottom: 9,
        );
      default:
        return getPadding(
          all: 6,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillBlueA200:
        return ColorConstant.blueA200;
      case ButtonVariant.OutlineBlueA200:
        return ColorConstant.black900;
      default:
        return ColorConstant.blueA200;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineBlueA200:
        return BorderSide(
          color: ColorConstant.blueA200,
          width: getHorizontalSize(
            5.00,
          ),
        );
      default:
        return null;
        ;
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.black9003f;
      case ButtonVariant.FillBlueA200:
      case ButtonVariant.OutlineBlueA200:
        return null;
      default:
        return ColorConstant.black9003f;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder5:
        return BorderRadius.circular(
          getHorizontalSize(
            5.00,
          ),
        );
      case ButtonShape.RoundedBorder20:
        return BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.InterBold15:
        return TextStyle(
          color: ColorConstant.gray500,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterBold15WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterBold35:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            35,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.InterBold8:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            8,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder10,
  RoundedBorder5,
  RoundedBorder20,
}

enum ButtonPadding {
  PaddingAll6,
  PaddingT9,
}

enum ButtonVariant {
  OutlineBlack9003f_1,
  OutlineBlack9003f,
  FillBlueA200,
  OutlineBlueA200,
}

enum ButtonFontStyle {
  InterBold20,
  InterBold15,
  InterBold15WhiteA700,
  InterBold35,
  InterBold8,
}
