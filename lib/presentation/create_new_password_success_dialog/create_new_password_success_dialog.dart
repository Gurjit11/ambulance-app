import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CreateNewPasswordSuccessDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(327),
        padding: getPadding(left: 24, top: 40, right: 24, bottom: 40),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: getMargin(top: 17),
                  color: ColorConstant.gray50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder51),
                  child: Container(
                      height: getSize(103),
                      width: getSize(103),
                      padding:
                          getPadding(left: 29, top: 34, right: 29, bottom: 34),
                      decoration: AppDecoration.fillGray50.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder51),
                      child: Stack(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgCheckmark31x41,
                            height: getVerticalSize(32),
                            width: getHorizontalSize(42),
                            radius: BorderRadius.circular(getHorizontalSize(3)),
                            alignment: Alignment.center)
                      ]))),
              Padding(
                  padding: getPadding(top: 40),
                  child: Text("Success",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtInterBold20)),
              Container(
                  width: getHorizontalSize(176),
                  margin: getMargin(top: 10),
                  child: Text("Your account has been \nsuccessfully registered",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtInterRegular16)),
              CustomButton(
                  height: getVerticalSize(56),
                  text: "Go to home",
                  margin: getMargin(top: 22),
                  onTap: () {
                    onTapGotohome(context);
                  })
            ]));
  }

  onTapGotohome(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeContainerScreen);
  }
}
