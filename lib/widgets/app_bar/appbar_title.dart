
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_style.dart';

// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({required this.text, this.margin, this.onTap});

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtInterBlack22.copyWith(
            height: getVerticalSize(
              1.00,
            ),
            color: ColorConstant.whiteA700,
          ),
        ),
      ),
    );
  }
}
