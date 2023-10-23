import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginSuccessDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(327),
        padding: getPadding(left: 24, top: 36, right: 24, bottom: 36),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: getMargin(top: 26),
                  color: ColorConstant.gray50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.circleBorder51),
                  child: Container(
                      height: getSize(102),
                      width: getSize(102),
                      padding:
                          getPadding(left: 29, top: 34, right: 29, bottom: 34),
                      decoration: AppDecoration.fillGray50.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder51),
                      child: Stack(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgCheckmark31x41,
                            height: getVerticalSize(31),
                            width: getHorizontalSize(41),
                            radius: BorderRadius.circular(getHorizontalSize(3)),
                            alignment: Alignment.center)
                      ]))),
              Padding(
                  padding: getPadding(top: 42),
                  child: Text("Yeay! Welcome Back",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRalewayRomanBold20)),
              Container(
                  width: getHorizontalSize(267),
                  margin: getMargin(left: 4, top: 8, right: 6),
                  child: Text(
                      "Once again you login successfully\ninto medidoc app",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtRalewayRomanRegular16
                          .copyWith(letterSpacing: getHorizontalSize(0.5)))),
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
