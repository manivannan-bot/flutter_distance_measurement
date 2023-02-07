import 'package:azep/routes/app_routes.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late FlCountryCodePicker countryCodePicker;
  CountryCode? countryCode;
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  void initState() {
    final favoriteCountries = ['IN', 'US', 'AE'];
    countryCodePicker = FlCountryCodePicker(
      favorites: favoriteCountries,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
              width: size.width,
              padding: getPadding(left: 45, top: 155, right: 45),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: getSize(30.00),
                                  padding: getPadding(
                                      left: 10, top: 1, right: 10, bottom: 1),
                                  decoration: AppDecoration.txtFillBlueA200
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
                                  decoration: AppDecoration.txtFillGray400
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
                            ])),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: phoneNumberController,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          maxLines: 1,
                          decoration: InputDecoration(
                              labelText: "Enter a Number",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              prefixIcon: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 6),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 6),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    GestureDetector(
                                      onTap: () async {
                                        final code = await countryCodePicker
                                            .showPicker(context: context);
                                        setState(() {
                                          countryCode = code;
                                        });
                                      },
                                      child: Row(children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 6),
                                          decoration: BoxDecoration(
                                              color: Colors.blueAccent,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Text(
                                            countryCode?.dialCode ?? "+1",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        )
                                      ]),
                                    )
                                  ],
                                ),
                              ),
                              labelStyle: TextStyle(color: Colors.grey[600])),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blueAccent),
                            onPressed: () {
                              if (countryCode != null) {
                                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                    content: Text(
                                        "${countryCode!.dialCode}-${phoneNumberController.text.trim()}")));
                              } else {
                                // ScaffoldMessenger.of(context).showSnackBar(
                                //     const SnackBar(
                                //         content: Text(
                                //             "Please select Country code")));
                              }
                              onTapNext(context);
                            },
                            child: Text("NEXT"))
                      ],
                    ),
                    Spacer()
                  ]),
            )));
  }

  onTapNext(context) {
    Navigator.pushNamed(context, AppRoutes.otpScreen,
        arguments: phoneNumberController.text.trim());
  }
}
