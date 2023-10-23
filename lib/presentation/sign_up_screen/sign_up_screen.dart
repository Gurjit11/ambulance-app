import 'package:ambulance/core/app_export.dart';
import 'package:ambulance/widgets/app_bar/appbar_image.dart';
import 'package:ambulance/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:ambulance/widgets/app_bar/custom_app_bar.dart';
import 'package:ambulance/widgets/custom_button.dart';
import 'package:ambulance/widgets/custom_checkbox.dart';
import 'package:ambulance/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:ambulance/presentation/sign_up_success_dialog/sign_up_success_dialog.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  TextEditingController enternameController = TextEditingController();

  TextEditingController enteremailController = TextEditingController();

  TextEditingController enterpasswordController = TextEditingController();

  bool isCheckbox = false;

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
                      onTapArrowleft1(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle2(text: "Sign Up")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 40, right: 24, bottom: 40),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: enternameController,
                          hintText: "Enter your name",
                          padding: TextFormFieldPadding.PaddingT16_2,
                          prefix: Container(
                              margin: getMargin(
                                  left: 24, top: 16, right: 16, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgUser)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: enteremailController,
                          hintText: "Enter your email",
                          margin: getMargin(top: 16),
                          padding: TextFormFieldPadding.PaddingT16_2,
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
                          controller: enterpasswordController,
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
                                  left: 30, top: 16, right: 24, bottom: 16),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCheckmark24x24)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)),
                          isObscureText: true),
                      CustomCheckbox(
                          text:
                              "I agree to the medidoc Terms of Service \nand Privacy Policy",
                          iconSize: getHorizontalSize(24),
                          value: isCheckbox,
                          margin: getMargin(top: 16, right: 28),
                          fontStyle: CheckboxFontStyle
                              .SFProDisplayRegular14Bluegray800,
                          onChange: (value) {
                            isCheckbox = value;
                          }),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "Sign Up",
                          margin: getMargin(top: 29),
                          onTap: () {
                            onTapSignupOne(context);
                          }),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(
                                  left: 44, top: 28, right: 45, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Already have an account?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRalewayRomanRegular15
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.5))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtLogIn(context);
                                        },
                                        child: Padding(
                                            padding: getPadding(left: 4),
                                            child: Text("Log In",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRalewayRomanMedium15)))
                                  ])))
                    ]))));
  }

  onTapSignupOne(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: SignUpSuccessDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapTxtLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
