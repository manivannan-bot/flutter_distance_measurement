import 'package:azep/core/utils/color_constant.dart';
import 'package:azep/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../core/theme/app_decoration.dart';
import '../../core/theme/app_style.dart';
import '../../core/utils/size_utils.dart';

class OtpScreen extends StatefulWidget {
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String? currentText;
  @override
  Widget build(BuildContext context) {
    final phoneNumber = ModalRoute.of(context)?.settings.arguments;
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: size.width,
                padding: getPadding(left: 45, top: 155, right: 45),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                width: getSize(30.00),
                                padding: getPadding(
                                    left: 10, top: 1, right: 10, bottom: 1),
                                decoration: AppDecoration.txtFillGray400
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtRoundedBorder5),
                                child: Text("1",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold20.copyWith(
                                        height: getVerticalSize(1.00)))),
                            Container(
                                width: getSize(30.00),
                                margin: getMargin(left: 30),
                                padding: getPadding(
                                    left: 8, top: 1, right: 8, bottom: 1),
                                decoration: AppDecoration.txtFillBlueA200
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtRoundedBorder5),
                                child: Text("2",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold20.copyWith(
                                        height: getVerticalSize(1.00)))),
                            Container(
                                width: getSize(30.00),
                                margin: getMargin(left: 30),
                                padding: getPadding(
                                    left: 7, top: 2, right: 7, bottom: 2),
                                decoration: AppDecoration.txtFillGray400
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtRoundedBorder5),
                                child: Text("3",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtInterBold20.copyWith(
                                        height: getVerticalSize(1.00))))
                          ]),
                      Text("We  sent OTP code to verify your number",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtInterBold15
                              .copyWith(height: getVerticalSize(1.00))),
                      Padding(
                          padding: getPadding(top: 6),
                          child: PinCodeTextField(
                              appContext: context,
                              length: 4,
                              obscureText: false,
                              obscuringCharacter: '*',
                              keyboardType: TextInputType.number,
                              autoDismissKeyboard: true,
                              enableActiveFill: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly
                              ],
                              onChanged: (value) {
                                setState(() {
                                  currentText = value;
                                });
                              },
                              pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(40.00),
                                  fieldWidth: getHorizontalSize(40.00),
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(5.00)),
                                  selectedFillColor: ColorConstant.whiteA700,
                                  activeFillColor: ColorConstant.whiteA700,
                                  inactiveFillColor: ColorConstant.whiteA700,
                                  inactiveColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  selectedColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  activeColor:
                                      ColorConstant.fromHex("#1212121D")))),
                      Text("mobile no ${phoneNumber}"),
                      ElevatedButton(
                          child: Text("NEXT"),
                          onPressed: () {
                            onTapNext(context);
                            if (currentText != null) {
                              debugPrint("OTP:$currentText");
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Please Enter OTP")));
                            }
                          })
                    ]))));
  }

  onTapNext(context) {
    Navigator.pushNamed(context, AppRoutes.nameScreen);
  }
}
