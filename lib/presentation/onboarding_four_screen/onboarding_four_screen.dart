import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class OnboardingFourScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 16, right: 24, bottom: 16),
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgVideocamera,
                      height: getVerticalSize(66),
                      width: getHorizontalSize(59),
                      margin: getMargin(top: 163)),
                  Padding(
                      padding: getPadding(top: 5),
                      child: Text("Helthio",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRomanBold25)),
                  Padding(
                      padding: getPadding(top: 40),
                      child: Text("Let’s get started!",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRalewayRomanBold22)),
                  Container(
                      width: getHorizontalSize(260),
                      margin: getMargin(left: 33, top: 9, right: 32),
                      child: Text(
                          "Login to enjoy the features we’ve provided, and stay healthy!",
                          maxLines: null,
                          textAlign: TextAlign.center,
                          style: AppStyle.txtRalewayRomanMedium16.copyWith(
                              letterSpacing: getHorizontalSize(0.5)))),
                  Spacer(),
                  CustomButton(
                      height: getVerticalSize(56),
                      text: "Login",
                      onTap: () {
                        onTapLogin(context);
                      })
                ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(56),
                text: "Sign Up",
                margin: getMargin(left: 24, right: 23, bottom: 60),
                variant: ButtonVariant.OutlineBlue600_1,
                fontStyle: ButtonFontStyle.RalewayRomanSemiBold16Blue600_1,
                onTap: () {
                  onTapSignup(context);
                })));
  }

  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
