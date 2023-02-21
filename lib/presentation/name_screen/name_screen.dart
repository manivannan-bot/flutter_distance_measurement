import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/theme/app_decoration.dart';
import '../../core/theme/app_style.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';

class NameScreen extends StatefulWidget {
  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  TextEditingController rectangleFourController = TextEditingController();
  File? _image;
  Future getImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    final TempImage = File(image.path);
    setState(() {
      _image = TempImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: size.width,
          padding: getPadding(
            left: 46,
            top: 155,
            right: 46,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: getSize(
                      30.00,
                    ),
                    padding: getPadding(
                      left: 10,
                      top: 1,
                      right: 10,
                      bottom: 1,
                    ),
                    decoration: AppDecoration.txtFillGray400.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                    ),
                    child: Text(
                      "1",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold20.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getSize(
                      30.00,
                    ),
                    margin: getMargin(
                      left: 30,
                    ),
                    padding: getPadding(
                      left: 8,
                      top: 1,
                      right: 8,
                      bottom: 1,
                    ),
                    decoration: AppDecoration.txtFillGray400.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                    ),
                    child: Text(
                      "2",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold20.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: getSize(
                      30.00,
                    ),
                    margin: getMargin(
                      left: 30,
                    ),
                    padding: getPadding(
                      left: 7,
                      top: 2,
                      right: 7,
                      bottom: 2,
                    ),
                    decoration: AppDecoration.txtFillBlueA200.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder5,
                    ),
                    child: Text(
                      "3",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold20.copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 200,
                height: 300,
                child: Column(
                  children: [
                    _image != null
                        ? Image.file(
                            _image!,
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          )
                        : Image.network(
                            'http://dev-bee.com/Dev-Bee/achive.png'),
                    ElevatedButton(
                      onPressed: getImage,
                      child: Row(
                        children: const [
                          Icon(Icons.image_outlined),
                          Text('Pick up an Image')
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        children: const [
                          Icon(Icons.image_outlined),
                          Text('capture from camera')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: getPadding(
                    top: 62,
                  ),
                ),
              ),
              TextFormField(
                focusNode: FocusNode(),
                decoration: InputDecoration(
                    hintText: "Enter your Name",
                    labelText: "NAME",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
                controller: rectangleFourController,
                textInputAction: TextInputAction.done,
              ),
              GestureDetector(
                onTap: () {
                  onTapNext(context);
                },
                child: ElevatedButton(
                  onPressed: () {
                    onTapNext(context);
                  },
                  child: Text("NEXT"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapNext(context) {
    Navigator.pushNamed(context, AppRoutes.homeStartScreen);
  }
}
