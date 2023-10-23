import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/widgets/app_bar/appbar_image.dart';
import 'package:ambulance/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:ambulance/widgets/app_bar/custom_app_bar.dart';
import 'package:ambulance/widgets/custom_button.dart';
import 'package:ambulance/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ambulance/presentation/login_success_dialog/login_success_dialog.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(40),
                leadingWidth: 64,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Login")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 40, right: 24, bottom: 40),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailController,
                          hintText: "Enter your email",
                          padding: TextFormFieldPadding.PaddingT16,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                              margin: getMargin(
                                  left: 24, top: 16, right: 16, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCheckmark)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: passwordController,
                          hintText: "Enter your password",
                          margin: getMargin(top: 16),
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 24, top: 16, right: 16, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCar)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 12, top: 16, right: 24, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCheckmark24x24)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                          isObscureText: true),
                      Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtForgotPassword(context);
                              },
                              child: Padding(
                                  padding: getPadding(top: 10),
                                  child: Text("Forgot Password?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRalewayRomanMedium14)))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "Login",
                          margin: getMargin(top: 32),
                          onTap: () {
                            onTapLoginOne(context);
                          }),
                      Padding(
                          padding: getPadding(left: 48, top: 26, right: 48),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Don’t have an account?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayRomanRegular15
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5)))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSignUp(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 4, top: 1),
                                        child: Text("Sign Up",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRalewayRomanMedium15)))
                              ])),
                      Padding(
                          padding: getPadding(top: 32),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 8, bottom: 9),
                                    child: SizedBox(
                                        width: getHorizontalSize(137),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray200))),
                                Text("OR",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRomanRegular16),
                                Padding(
                                    padding: getPadding(top: 8, bottom: 9),
                                    child: SizedBox(
                                        width: getHorizontalSize(137),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray200)))
                              ])),
                      Container(
                          margin: getMargin(top: 29),
                          padding: getPadding(
                              left: 18, top: 16, right: 18, bottom: 16),
                          decoration: AppDecoration.outlineGray200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgGoogle,
                                height: getVerticalSize(20),
                                width: getHorizontalSize(19),
                                margin: getMargin(top: 1, bottom: 1)),
                            Padding(
                                padding: getPadding(left: 52, top: 3),
                                child: Text("Sign in with Google",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRomanSemiBold16))
                          ])),
                      Container(
                          margin: getMargin(top: 16),
                          padding: getPadding(
                              left: 18, top: 16, right: 18, bottom: 16),
                          decoration: AppDecoration.outlineGray200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgCamera,
                                height: getVerticalSize(20),
                                width: getHorizontalSize(16),
                                margin: getMargin(top: 1, bottom: 1)),
                            Padding(
                                padding: getPadding(left: 60, top: 3),
                                child: Text("Sign in with Apple",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRomanSemiBold16))
                          ])),
                      Container(
                          margin: getMargin(top: 16, bottom: 5),
                          padding: getPadding(
                              left: 18, top: 16, right: 18, bottom: 16),
                          decoration: AppDecoration.outlineGray200.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8),
                          child: Row(children: [
                            Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: getMargin(top: 1, bottom: 1),
                                color: ColorConstant.blue60002,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder8),
                                child: Container(
                                    height: getSize(20),
                                    width: getSize(20),
                                    padding: getPadding(
                                        left: 6, top: 4, right: 6, bottom: 4),
                                    decoration: AppDecoration.fillBlue60002
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                    child: Stack(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgFacebook,
                                          height: getVerticalSize(11),
                                          width: getHorizontalSize(6),
                                          alignment: Alignment.center)
                                    ]))),
                            Padding(
                                padding: getPadding(left: 43, top: 3),
                                child: Text("Sign in with Facebook",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRalewayRomanSemiBold16))
                          ]))
                    ]))));
  }

  onTapTxtForgotPassword(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.resetPasswordEmailTabContainerScreen);
  }

  onTapLoginOne(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: LoginSuccessDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapTxtSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
