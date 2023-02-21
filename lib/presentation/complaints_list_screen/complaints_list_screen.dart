import 'package:flutter/material.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../complaints_list_screen/widgets/listtripid2299_item_widget.dart';

class ComplaintsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: AppBar(
              title: Text("Complaint List"),
            ),
            body: Container(
                width: size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 10, top: 12, right: 9),
                          child: ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(12.00));
                              },
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Listtripid2299ItemWidget();
                              })),
                      Spacer()
                    ])),
            bottomNavigationBar: Padding(
                padding: getPadding(left: 51, right: 51, bottom: 46),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                      child: Text("ADD COMPLAINT"),
                      onPressed: () => onTapAddcomplaint(context))
                ]))));
  }

  onTapAddcomplaint(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.complaintScreen);
  }

  onTapHome7(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeStartScreen);
  }
}
